/*
 * MIT License
 * Copyright <2021-2022>
 *
 * Permission is hereby granted, free of charge, to any person obtaining a copy
 * of this software and associated documentation files (the "Software"), to deal
 * in the Software without restriction, including without limitation the rights
 * to use, copy, modify, merge, publish, distribute, sublicense, and/or sell copies
 * of the Software, and to permit persons to whom the Software is furnished to do so,
 * subject to the following conditions:
 *
 * The above copyright notice and this permission notice shall be included in all
 * copies or substantial portions of the Software.
 *
 * THE SOFTWARE IS PROVIDED "AS IS", WITHOUT WARRANTY OF ANY KIND, EXPRESS OR IMPLIED,
 * INCLUDING BUT NOT LIMITED TO THE WARRANTIES OF MERCHANTABILITY, FITNESS FOR A
 * PARTICULAR PURPOSE AND NONINFRINGEMENT. IN NO EVENT SHALL THE AUTHORS OR COPYRIGHT
 * HOLDERS BE LIABLE FOR ANY CLAIM, DAMAGES OR OTHER LIABILITY, WHETHER IN AN ACTION OF
 * CONTRACT, TORT OR OTHERWISE, ARISING FROM, OUT OF OR IN CONNECTION WITH THE SOFTWARE
 * OR THE USE OR OTHER DEALINGS IN THE SOFTWARE.
 * @Author: Sinda
 * @Email:  xhuicloud@163.com
 */

package com.xhuicloud.generator.controller;

import com.baomidou.dynamic.datasource.toolkit.DynamicDataSourceContextHolder;
import com.baomidou.mybatisplus.core.metadata.IPage;
import com.baomidou.mybatisplus.extension.plugins.pagination.Page;
import com.xhuicloud.common.core.utils.Response;
import com.xhuicloud.common.datasource.entity.GenDsInfo;
import com.xhuicloud.common.log.annotation.SysLog;
import com.xhuicloud.generator.entity.TableInfo;
import com.xhuicloud.generator.handle.JdbcHandle;
import com.xhuicloud.common.core.utils.AesUtil;
import com.xhuicloud.generator.service.GenDsInfoService;
import io.swagger.annotations.Api;
import lombok.AllArgsConstructor;
import org.springframework.web.bind.annotation.*;

import javax.validation.Valid;
import java.util.Map;

/**
 * @program: XHuiCloud
 * @description: DataSourceController
 * @author: Sinda
 * @create: 2020-06-22 11:53
 */
@RestController
@AllArgsConstructor
@RequestMapping("/dataSource")
@Api(value = "dataSource", tags = "数据源管理模块")
public class GenDatasourceInfoController {

    private final GenDsInfoService genDsInfoService;

    private final Map<String, JdbcHandle> handle;

    /**
     * 预测试数据库连接是否有效
     * TODO 后面入参需要加密
     */
    @GetMapping("/test")
    public Response test(GenDsInfo genDsInfo) {
        return Response.success(handle.get(genDsInfo.getType()).test(genDsInfo));
    }

    /**
     * 分页查询数据源列表
     *
     * @param page
     * @return
     */
    @GetMapping("/page")
    public Response page(Page page) {
        return Response.success(genDsInfoService.page(page));
    }

    @GetMapping("/queryPageTableForMysql/{name}")
    public Response queryPageTableForMysql(@PathVariable String name, Page page) {
        DynamicDataSourceContextHolder.push(name);
        IPage<TableInfo> tableInfoIPage = genDsInfoService.queryPageTableForMysql(page);
        DynamicDataSourceContextHolder.clear();
        return Response.success(tableInfoIPage);
    }

    /**
     * 分页查询数据源的表信息
     *
     * @param id 数据源
     * @return
     */
    @GetMapping("/{id}")
    public Response getTableInfoById(Page page, @PathVariable Integer id) {
        GenDsInfo genDsInfo = genDsInfoService.getById(id);
        JdbcHandle jdbcHandle = handle.get(genDsInfo.getType());
        jdbcHandle.test(genDsInfo);
        return Response.success(jdbcHandle.getPageTableInfo(page));
    }

    /**
     * 保存
     * <p>
     * TODO 后面入参需要加密
     */
    @PostMapping
//    @PreAuthorize("@authorize.hasPermission('sys_add_dataSource')")
    public Response save(@RequestBody GenDsInfo genDsInfo) throws Exception {
        // 构建前端对应解密AES 因子
        genDsInfo.setPassword(AesUtil.decrypt(genDsInfo.getPassword()));
        genDsInfo.setUsername(AesUtil.decrypt(genDsInfo.getUsername()));
        JdbcHandle jdbcHandle = handle.get(genDsInfo.getType());
        if (jdbcHandle.test(genDsInfo)) {
            genDsInfoService.save(genDsInfo);
            genDsInfoService.addDynamicDataSource(genDsInfo);
            return Response.success();
        }
        return Response.failed();
    }

    /**
     * 编辑
     *
     * @param genDsInfo
     * @return
     */
    @SysLog("编辑数据源")
    @PutMapping
//    @PreAuthorize("@authorize.hasPermission('sys_editor_dataSource')")
    public Response update(@Valid @RequestBody GenDsInfo genDsInfo) {
        return Response.success(genDsInfoService.updateDynamicDataSource(genDsInfo));
    }

    /**
     * 删除
     *
     * @param id
     * @return
     */
    @SysLog("删除")
    @DeleteMapping("/{id}")
//    @PreAuthorize("@authorize.hasPermission('sys_delete_dataSource')")
    public Response delete(@PathVariable Integer id) {
        return Response.success(genDsInfoService.removeById(id));
    }

}

