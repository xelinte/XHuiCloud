package com.xhuicloud.common.mybatis.tenant;

import cn.hutool.core.util.StrUtil;
import com.xhuicloud.common.core.constant.CommonConstants;
import com.xhuicloud.common.data.tenant.XHuiCommonThreadLocalHolder;
import lombok.SneakyThrows;
import lombok.extern.slf4j.Slf4j;
import org.springframework.core.Ordered;
import org.springframework.core.annotation.Order;
import org.springframework.web.filter.GenericFilterBean;
import javax.servlet.FilterChain;
import javax.servlet.ServletRequest;
import javax.servlet.ServletResponse;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;

/**
 * @program: XHuiCloud
 * @description: 租户过滤器
 * @author: Sinda
 * @create: 2020-05-12 17:45
 */
@Slf4j
@Order(Ordered.HIGHEST_PRECEDENCE)
public class XHuiTenantFilter extends GenericFilterBean {

    @Override
    @SneakyThrows
    public void doFilter(ServletRequest servletRequest, ServletResponse servletResponse, FilterChain filterChain) {
        HttpServletRequest request = (HttpServletRequest) servletRequest;
        HttpServletResponse response = (HttpServletResponse) servletResponse;

        String tenantId = request.getHeader(CommonConstants.TENANT_ID);
        if (StrUtil.isNotBlank(tenantId)) {
            XHuiCommonThreadLocalHolder.setTenant(Integer.parseInt(tenantId));
        } else {
            tenantId = request.getParameter(CommonConstants.TENANT_ID);
            if (StrUtil.isNotBlank(tenantId)) {
                XHuiCommonThreadLocalHolder.setTenant(Integer.parseInt(tenantId));
            } else {
                XHuiCommonThreadLocalHolder.setTenant(CommonConstants.DEFAULT_TENANT_ID);
            }
        }
        log.debug("租户id为:[{}]", tenantId);
        filterChain.doFilter(request, response);
        XHuiCommonThreadLocalHolder.removeTenant();
    }

}