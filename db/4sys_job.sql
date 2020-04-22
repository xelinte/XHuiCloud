USE sys_job;

SET NAMES utf8mb4;
SET FOREIGN_KEY_CHECKS = 0;

-- ----------------------------
-- Table structure for JOB_EXECUTION_LOG
-- ----------------------------
DROP TABLE IF EXISTS `JOB_EXECUTION_LOG`;
CREATE TABLE `JOB_EXECUTION_LOG` (
  `id` varchar(40) NOT NULL,
  `job_name` varchar(100) NOT NULL,
  `task_id` varchar(255) NOT NULL,
  `hostname` varchar(255) NOT NULL,
  `ip` varchar(50) NOT NULL,
  `sharding_item` int(11) NOT NULL,
  `execution_source` varchar(20) NOT NULL,
  `failure_cause` varchar(4000) DEFAULT NULL,
  `is_success` int(11) NOT NULL,
  `start_time` timestamp NULL DEFAULT NULL,
  `complete_time` timestamp NULL DEFAULT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

-- ----------------------------
-- Records of JOB_EXECUTION_LOG
-- ----------------------------
BEGIN;
INSERT INTO `JOB_EXECUTION_LOG` VALUES ('0112468d-c4c3-4398-8395-6c34ad55d6f2', 'com.zsinda.fdp.job.TestSimpleJob', 'com.zsinda.fdp.job.TestSimpleJob@-@0,1@-@READY@-@192.168.50.2@-@7429', 'cengxindadeMBP', '192.168.50.2', 0, 'NORMAL_TRIGGER', NULL, 1, '2020-03-10 15:06:10', '2020-03-10 15:06:10');
INSERT INTO `JOB_EXECUTION_LOG` VALUES ('0504e316-8a8e-446d-9540-db6290c845b3', 'com.zsinda.fdp.job.TestSimpleJob', 'com.zsinda.fdp.job.TestSimpleJob@-@0,1@-@READY@-@192.168.50.2@-@6946', 'cengxindadeMBP', '192.168.50.2', 1, 'NORMAL_TRIGGER', NULL, 1, '2020-03-10 14:32:20', '2020-03-10 14:32:20');
INSERT INTO `JOB_EXECUTION_LOG` VALUES ('05cd2204-b1a7-4bd7-8a96-d1cd5e992495', 'com.zsinda.fdp.job.TestSimpleJob', 'com.zsinda.fdp.job.TestSimpleJob@-@0,1@-@READY@-@192.168.50.2@-@6958', 'cengxindadeMBP', '192.168.50.2', 1, 'NORMAL_TRIGGER', NULL, 1, '2020-03-10 14:33:00', '2020-03-10 14:33:00');
INSERT INTO `JOB_EXECUTION_LOG` VALUES ('0935a2c2-cf04-4079-9d48-8e62c4cd5cb2', 'com.zsinda.fdp.job.TestSimpleJob', 'com.zsinda.fdp.job.TestSimpleJob@-@0,1@-@READY@-@192.168.50.2@-@6958', 'cengxindadeMBP', '192.168.50.2', 0, 'NORMAL_TRIGGER', NULL, 1, '2020-03-10 14:33:00', '2020-03-10 14:33:00');
INSERT INTO `JOB_EXECUTION_LOG` VALUES ('0c4dff27-c021-4a6b-b359-71f208c15a9b', 'com.zsinda.fdp.job.TestSimpleJob', 'com.zsinda.fdp.job.TestSimpleJob@-@0,1@-@READY@-@192.168.2.209@-@1730', 'cengxindadeMBP.lan', '192.168.2.209', 1, 'NORMAL_TRIGGER', NULL, 1, '2020-03-10 00:01:20', '2020-03-10 00:01:20');
INSERT INTO `JOB_EXECUTION_LOG` VALUES ('0e9e253b-c1f8-4629-bad7-7ff9afb728e2', 'com.zsinda.fdp.job.TestSimpleJob', 'com.zsinda.fdp.job.TestSimpleJob@-@0,1@-@READY@-@192.168.50.2@-@6933', 'cengxindadeMBP', '192.168.50.2', 1, 'NORMAL_TRIGGER', NULL, 1, '2020-03-10 14:31:30', '2020-03-10 14:31:30');
INSERT INTO `JOB_EXECUTION_LOG` VALUES ('15070ef9-94e4-4489-9687-1284751f9bfa', 'com.zsinda.fdp.job.TestSimpleJob', 'com.zsinda.fdp.job.TestSimpleJob@-@0,1@-@READY@-@192.168.2.209@-@1730', 'cengxindadeMBP.lan', '192.168.2.209', 1, 'NORMAL_TRIGGER', NULL, 1, '2020-03-10 00:01:10', '2020-03-10 00:01:10');
INSERT INTO `JOB_EXECUTION_LOG` VALUES ('186ef7e6-1471-4fce-91ba-400b782ce2e1', 'com.zsinda.fdp.job.TestSimpleJob', 'com.zsinda.fdp.job.TestSimpleJob@-@0,1@-@READY@-@192.168.2.209@-@1730', 'cengxindadeMBP.lan', '192.168.2.209', 1, 'NORMAL_TRIGGER', NULL, 1, '2020-03-10 00:00:20', '2020-03-10 00:00:20');
INSERT INTO `JOB_EXECUTION_LOG` VALUES ('253b1338-e6e9-4bb7-bcc4-4ebae333327b', 'com.zsinda.fdp.job.TestSimpleJob', 'com.zsinda.fdp.job.TestSimpleJob@-@0,1@-@READY@-@192.168.50.2@-@7429', 'cengxindadeMBP', '192.168.50.2', 0, 'NORMAL_TRIGGER', NULL, 1, '2020-03-10 15:06:20', '2020-03-10 15:06:20');
INSERT INTO `JOB_EXECUTION_LOG` VALUES ('298e7652-0783-4b8d-9fdb-dbf6e2ee2d96', 'com.zsinda.fdp.job.TestSimpleJob', 'com.zsinda.fdp.job.TestSimpleJob@-@0,1@-@READY@-@192.168.2.209@-@1820', 'cengxindadeMBP.lan', '192.168.2.209', 0, 'NORMAL_TRIGGER', NULL, 1, '2020-03-10 00:08:20', '2020-03-10 00:08:20');
INSERT INTO `JOB_EXECUTION_LOG` VALUES ('29cb10ef-ed5e-42bc-a583-91809db5157d', 'com.zsinda.fdp.job.TestSimpleJob', 'com.zsinda.fdp.job.TestSimpleJob@-@0,1@-@READY@-@192.168.50.2@-@6946', 'cengxindadeMBP', '192.168.50.2', 0, 'NORMAL_TRIGGER', NULL, 1, '2020-03-10 14:32:10', '2020-03-10 14:32:10');
INSERT INTO `JOB_EXECUTION_LOG` VALUES ('2ce6bcb8-0336-4ab7-b761-8e402ba33204', 'com.zsinda.fdp.job.TestSimpleJob', 'com.zsinda.fdp.job.TestSimpleJob@-@0,1@-@READY@-@192.168.2.209@-@1730', 'cengxindadeMBP.lan', '192.168.2.209', 0, 'NORMAL_TRIGGER', NULL, 1, '2020-03-10 00:00:10', '2020-03-10 00:00:10');
INSERT INTO `JOB_EXECUTION_LOG` VALUES ('35013ae2-0d8a-4e08-9a9e-be601aeb41b6', 'com.zsinda.fdp.job.TestSimpleJob', 'com.zsinda.fdp.job.TestSimpleJob@-@0,1@-@READY@-@192.168.2.209@-@1748', 'cengxindadeMBP.lan', '192.168.2.209', 1, 'NORMAL_TRIGGER', NULL, 1, '2020-03-10 00:02:00', '2020-03-10 00:02:00');
INSERT INTO `JOB_EXECUTION_LOG` VALUES ('357c65a1-12ba-4496-9532-b0214588d296', 'com.zsinda.fdp.job.TestSimpleJob', 'com.zsinda.fdp.job.TestSimpleJob@-@0,1@-@READY@-@192.168.2.209@-@1687', 'cengxindadeMBP.lan', '192.168.2.209', 0, 'NORMAL_TRIGGER', NULL, 1, '2020-03-09 23:58:00', '2020-03-09 23:58:00');
INSERT INTO `JOB_EXECUTION_LOG` VALUES ('39acacc3-74d9-499a-aeed-dccfa50a5a42', 'com.zsinda.fdp.job.TestSimpleJob', 'com.zsinda.fdp.job.TestSimpleJob@-@0,1@-@READY@-@192.168.2.209@-@1748', 'cengxindadeMBP.lan', '192.168.2.209', 1, 'NORMAL_TRIGGER', NULL, 1, '2020-03-10 00:01:50', '2020-03-10 00:01:50');
INSERT INTO `JOB_EXECUTION_LOG` VALUES ('3e1d9783-7f89-43a4-a393-f9f2724442b2', 'com.zsinda.fdp.job.TestSimpleJob', 'com.zsinda.fdp.job.TestSimpleJob@-@0,1@-@READY@-@192.168.50.2@-@6933', 'cengxindadeMBP', '192.168.50.2', 1, 'NORMAL_TRIGGER', NULL, 1, '2020-03-10 14:31:50', '2020-03-10 14:31:50');
INSERT INTO `JOB_EXECUTION_LOG` VALUES ('44a87a14-2386-4876-bfd8-4230272d6c1c', 'com.zsinda.fdp.job.TestSimpleJob', 'com.zsinda.fdp.job.TestSimpleJob@-@0,1@-@READY@-@192.168.2.209@-@1730', 'cengxindadeMBP.lan', '192.168.2.209', 0, 'NORMAL_TRIGGER', NULL, 1, '2020-03-10 00:00:50', '2020-03-10 00:00:50');
INSERT INTO `JOB_EXECUTION_LOG` VALUES ('4721606a-a683-4560-9639-ba757d91442e', 'com.zsinda.fdp.job.TestSimpleJob', 'com.zsinda.fdp.job.TestSimpleJob@-@0,1@-@READY@-@192.168.2.209@-@1687', 'cengxindadeMBP.lan', '192.168.2.209', 1, 'NORMAL_TRIGGER', NULL, 1, '2020-03-09 23:58:00', '2020-03-09 23:58:00');
INSERT INTO `JOB_EXECUTION_LOG` VALUES ('47338148-0010-44b9-ae5b-c7c34365b0f2', 'com.zsinda.fdp.job.TestSimpleJob', 'com.zsinda.fdp.job.TestSimpleJob@-@0,1@-@READY@-@192.168.2.209@-@1748', 'cengxindadeMBP.lan', '192.168.2.209', 1, 'NORMAL_TRIGGER', NULL, 1, '2020-03-10 00:02:10', '2020-03-10 00:02:10');
INSERT INTO `JOB_EXECUTION_LOG` VALUES ('50cccb97-5bd2-4f75-8d38-42f2e9612516', 'com.zsinda.fdp.job.TestSimpleJob', 'com.zsinda.fdp.job.TestSimpleJob@-@0,1@-@READY@-@192.168.2.209@-@1730', 'cengxindadeMBP.lan', '192.168.2.209', 1, 'NORMAL_TRIGGER', NULL, 1, '2020-03-10 00:01:00', '2020-03-10 00:01:00');
INSERT INTO `JOB_EXECUTION_LOG` VALUES ('524151f3-fe19-4ed9-970e-ecc35352deb3', 'com.zsinda.fdp.job.TestSimpleJob', 'com.zsinda.fdp.job.TestSimpleJob@-@0,1@-@READY@-@192.168.50.2@-@7429', 'cengxindadeMBP', '192.168.50.2', 1, 'NORMAL_TRIGGER', NULL, 1, '2020-03-10 15:05:40', '2020-03-10 15:05:40');
INSERT INTO `JOB_EXECUTION_LOG` VALUES ('525d51f0-edd7-4094-b4f6-8dd798f088b9', 'com.zsinda.fdp.job.TestSimpleJob', 'com.zsinda.fdp.job.TestSimpleJob@-@0,1@-@READY@-@192.168.2.209@-@1730', 'cengxindadeMBP.lan', '192.168.2.209', 1, 'NORMAL_TRIGGER', NULL, 1, '2020-03-10 00:00:10', '2020-03-10 00:00:10');
INSERT INTO `JOB_EXECUTION_LOG` VALUES ('55b0cde4-9d37-46f5-9b1e-cddccda10e7e', 'com.zsinda.fdp.job.TestSimpleJob', 'com.zsinda.fdp.job.TestSimpleJob@-@0,1@-@READY@-@192.168.50.2@-@6933', 'cengxindadeMBP', '192.168.50.2', 0, 'NORMAL_TRIGGER', NULL, 1, '2020-03-10 14:31:30', '2020-03-10 14:31:30');
INSERT INTO `JOB_EXECUTION_LOG` VALUES ('5eab3405-5688-4c56-ad75-3caed024c6ae', 'com.zsinda.fdp.job.TestSimpleJob', 'com.zsinda.fdp.job.TestSimpleJob@-@0,1@-@READY@-@192.168.50.2@-@7429', 'cengxindadeMBP', '192.168.50.2', 1, 'NORMAL_TRIGGER', NULL, 1, '2020-03-10 15:05:50', '2020-03-10 15:05:50');
INSERT INTO `JOB_EXECUTION_LOG` VALUES ('5f4aba12-401d-4962-83f1-944465c131ff', 'com.zsinda.fdp.job.TestSimpleJob', 'com.zsinda.fdp.job.TestSimpleJob@-@0,1@-@READY@-@192.168.2.209@-@1748', 'cengxindadeMBP.lan', '192.168.2.209', 0, 'NORMAL_TRIGGER', NULL, 1, '2020-03-10 00:01:50', '2020-03-10 00:01:50');
INSERT INTO `JOB_EXECUTION_LOG` VALUES ('5f8f4b74-21bc-422a-a31e-79ae51498d0c', 'com.zsinda.fdp.job.TestSimpleJob', 'com.zsinda.fdp.job.TestSimpleJob@-@0,1@-@READY@-@192.168.50.2@-@6933', 'cengxindadeMBP', '192.168.50.2', 1, 'NORMAL_TRIGGER', NULL, 1, '2020-03-10 14:31:40', '2020-03-10 14:31:40');
INSERT INTO `JOB_EXECUTION_LOG` VALUES ('64ce3926-8ec9-441d-ab99-e5323da168e1', 'com.zsinda.fdp.job.TestSimpleJob', 'com.zsinda.fdp.job.TestSimpleJob@-@0,1@-@READY@-@192.168.2.209@-@1748', 'cengxindadeMBP.lan', '192.168.2.209', 0, 'NORMAL_TRIGGER', NULL, 1, '2020-03-10 00:01:40', '2020-03-10 00:01:40');
INSERT INTO `JOB_EXECUTION_LOG` VALUES ('65d471e0-51dc-4bfb-a388-10fb60247def', 'com.zsinda.fdp.job.TestSimpleJob', 'com.zsinda.fdp.job.TestSimpleJob@-@0,1@-@READY@-@192.168.2.209@-@1820', 'cengxindadeMBP.lan', '192.168.2.209', 1, 'NORMAL_TRIGGER', NULL, 1, '2020-03-10 00:08:10', '2020-03-10 00:08:10');
INSERT INTO `JOB_EXECUTION_LOG` VALUES ('6815b568-4ce6-42b0-93ea-895d18a81920', 'com.zsinda.fdp.job.TestSimpleJob', 'com.zsinda.fdp.job.TestSimpleJob@-@0,1@-@READY@-@192.168.50.2@-@6958', 'cengxindadeMBP', '192.168.50.2', 0, 'NORMAL_TRIGGER', NULL, 1, '2020-03-10 14:32:50', '2020-03-10 14:32:50');
INSERT INTO `JOB_EXECUTION_LOG` VALUES ('69d0ce30-446b-4814-9b59-a3ad291956ed', 'com.zsinda.fdp.job.TestSimpleJob', 'com.zsinda.fdp.job.TestSimpleJob@-@0,1@-@READY@-@192.168.2.209@-@1642', 'cengxindadeMBP.lan', '192.168.2.209', 1, 'NORMAL_TRIGGER', NULL, 1, '2020-03-09 23:56:30', '2020-03-09 23:56:30');
INSERT INTO `JOB_EXECUTION_LOG` VALUES ('69d91fb0-db47-4b66-9c62-16b8e74978a4', 'com.zsinda.fdp.job.TestSimpleJob', 'com.zsinda.fdp.job.TestSimpleJob@-@0,1@-@READY@-@192.168.50.2@-@6933', 'cengxindadeMBP', '192.168.50.2', 0, 'NORMAL_TRIGGER', NULL, 1, '2020-03-10 14:31:50', '2020-03-10 14:31:50');
INSERT INTO `JOB_EXECUTION_LOG` VALUES ('704d14e0-fcc5-4a7b-ad8e-e1046f4833c0', 'com.zsinda.fdp.job.TestSimpleJob', 'com.zsinda.fdp.job.TestSimpleJob@-@0,1@-@READY@-@192.168.2.209@-@1687', 'cengxindadeMBP.lan', '192.168.2.209', 0, 'NORMAL_TRIGGER', NULL, 1, '2020-03-09 23:57:40', '2020-03-09 23:57:40');
INSERT INTO `JOB_EXECUTION_LOG` VALUES ('7219cb15-300d-4cae-b2d9-71756ae248a1', 'com.zsinda.fdp.job.TestSimpleJob', 'com.zsinda.fdp.job.TestSimpleJob@-@0,1@-@READY@-@192.168.2.209@-@1748', 'cengxindadeMBP.lan', '192.168.2.209', 1, 'NORMAL_TRIGGER', NULL, 1, '2020-03-10 00:01:40', '2020-03-10 00:01:40');
INSERT INTO `JOB_EXECUTION_LOG` VALUES ('739394dd-cbd2-4836-ab3f-5718124ae742', 'com.zsinda.fdp.job.TestSimpleJob', 'com.zsinda.fdp.job.TestSimpleJob@-@0,1@-@READY@-@192.168.2.209@-@1820', 'cengxindadeMBP.lan', '192.168.2.209', 1, 'NORMAL_TRIGGER', NULL, 1, '2020-03-10 00:08:00', '2020-03-10 00:08:00');
INSERT INTO `JOB_EXECUTION_LOG` VALUES ('7fb89c07-9e26-4c3f-b8a3-0262156b68db', 'com.zsinda.fdp.job.TestSimpleJob', 'com.zsinda.fdp.job.TestSimpleJob@-@0,1@-@READY@-@192.168.50.2@-@6946', 'cengxindadeMBP', '192.168.50.2', 1, 'NORMAL_TRIGGER', NULL, 1, '2020-03-10 14:32:10', '2020-03-10 14:32:10');
INSERT INTO `JOB_EXECUTION_LOG` VALUES ('808c8f09-d8f4-4984-bf2b-6cc252dcecbb', 'com.zsinda.fdp.job.TestSimpleJob', 'com.zsinda.fdp.job.TestSimpleJob@-@0,1@-@READY@-@192.168.2.209@-@1730', 'cengxindadeMBP.lan', '192.168.2.209', 1, 'NORMAL_TRIGGER', NULL, 1, '2020-03-10 00:00:30', '2020-03-10 00:00:30');
INSERT INTO `JOB_EXECUTION_LOG` VALUES ('83157bb1-22e9-4d5e-925c-29dd2cd4a6bf', 'com.zsinda.fdp.job.TestSimpleJob', 'com.zsinda.fdp.job.TestSimpleJob@-@0,1@-@READY@-@192.168.2.209@-@1642', 'cengxindadeMBP.lan', '192.168.2.209', 0, 'NORMAL_TRIGGER', NULL, 1, '2020-03-09 23:56:30', '2020-03-09 23:56:30');
INSERT INTO `JOB_EXECUTION_LOG` VALUES ('8448fc71-04fa-49f5-baff-504fcd4e2839', 'com.zsinda.fdp.job.TestSimpleJob', 'com.zsinda.fdp.job.TestSimpleJob@-@0,1@-@READY@-@192.168.2.209@-@1820', 'cengxindadeMBP.lan', '192.168.2.209', 0, 'NORMAL_TRIGGER', NULL, 1, '2020-03-10 00:07:50', '2020-03-10 00:07:50');
INSERT INTO `JOB_EXECUTION_LOG` VALUES ('8927ddbd-a598-40c7-97aa-0acc71fdbd79', 'com.zsinda.fdp.job.TestSimpleJob', 'com.zsinda.fdp.job.TestSimpleJob@-@0,1@-@READY@-@192.168.50.2@-@6946', 'cengxindadeMBP', '192.168.50.2', 0, 'NORMAL_TRIGGER', NULL, 1, '2020-03-10 14:32:20', '2020-03-10 14:32:20');
INSERT INTO `JOB_EXECUTION_LOG` VALUES ('8dc3ddef-602b-4e13-8a7f-3f8c524dbdbe', 'com.zsinda.fdp.job.TestSimpleJob', 'com.zsinda.fdp.job.TestSimpleJob@-@0,1@-@READY@-@192.168.2.209@-@1687', 'cengxindadeMBP.lan', '192.168.2.209', 1, 'NORMAL_TRIGGER', NULL, 1, '2020-03-09 23:57:50', '2020-03-09 23:57:50');
INSERT INTO `JOB_EXECUTION_LOG` VALUES ('8f3d66ec-d19c-469e-a2f2-4764c5f970c7', 'com.zsinda.fdp.job.TestSimpleJob', 'com.zsinda.fdp.job.TestSimpleJob@-@0,1@-@READY@-@192.168.2.209@-@1687', 'cengxindadeMBP.lan', '192.168.2.209', 1, 'NORMAL_TRIGGER', NULL, 1, '2020-03-09 23:57:40', '2020-03-09 23:57:40');
INSERT INTO `JOB_EXECUTION_LOG` VALUES ('977f3b4c-e7b7-421c-bc6d-2da3d394e063', 'com.zsinda.fdp.job.TestSimpleJob', 'com.zsinda.fdp.job.TestSimpleJob@-@0,1@-@READY@-@192.168.2.209@-@1730', 'cengxindadeMBP.lan', '192.168.2.209', 1, 'NORMAL_TRIGGER', NULL, 1, '2020-03-10 00:00:50', '2020-03-10 00:00:50');
INSERT INTO `JOB_EXECUTION_LOG` VALUES ('97e6b96f-3211-4bc0-9525-2022dd202554', 'com.zsinda.fdp.job.TestSimpleJob', 'com.zsinda.fdp.job.TestSimpleJob@-@0,1@-@READY@-@192.168.2.209@-@1820', 'cengxindadeMBP.lan', '192.168.2.209', 1, 'NORMAL_TRIGGER', NULL, 1, '2020-03-10 00:08:30', '2020-03-10 00:08:30');
INSERT INTO `JOB_EXECUTION_LOG` VALUES ('9aed0f53-bad2-44fc-94a9-6808f1d5f048', 'com.zsinda.fdp.job.TestSimpleJob', 'com.zsinda.fdp.job.TestSimpleJob@-@0,1@-@READY@-@192.168.2.209@-@1730', 'cengxindadeMBP.lan', '192.168.2.209', 0, 'NORMAL_TRIGGER', NULL, 1, '2020-03-10 00:01:20', '2020-03-10 00:01:20');
INSERT INTO `JOB_EXECUTION_LOG` VALUES ('9ec1e6b2-23b8-423c-b4d3-8d5ac4dad007', 'com.zsinda.fdp.job.TestSimpleJob', 'com.zsinda.fdp.job.TestSimpleJob@-@0,1@-@READY@-@192.168.2.209@-@1820', 'cengxindadeMBP.lan', '192.168.2.209', 0, 'NORMAL_TRIGGER', NULL, 1, '2020-03-10 00:08:30', '2020-03-10 00:08:30');
INSERT INTO `JOB_EXECUTION_LOG` VALUES ('a38b8f7c-c352-47b0-b357-2c2e08ce99fd', 'com.zsinda.fdp.job.TestSimpleJob', 'com.zsinda.fdp.job.TestSimpleJob@-@0,1@-@READY@-@192.168.50.2@-@7429', 'cengxindadeMBP', '192.168.50.2', 1, 'NORMAL_TRIGGER', NULL, 1, '2020-03-10 15:06:30', '2020-03-10 15:06:30');
INSERT INTO `JOB_EXECUTION_LOG` VALUES ('a61866ce-83eb-4d0f-a913-acda05a09492', 'com.zsinda.fdp.job.TestSimpleJob', 'com.zsinda.fdp.job.TestSimpleJob@-@0,1@-@READY@-@192.168.2.209@-@1820', 'cengxindadeMBP.lan', '192.168.2.209', 0, 'NORMAL_TRIGGER', NULL, 1, '2020-03-10 00:08:00', '2020-03-10 00:08:00');
INSERT INTO `JOB_EXECUTION_LOG` VALUES ('a8ac055b-e386-42b4-b79c-6d7679362eb2', 'com.zsinda.fdp.job.TestSimpleJob', 'com.zsinda.fdp.job.TestSimpleJob@-@0,1@-@READY@-@192.168.2.209@-@1820', 'cengxindadeMBP.lan', '192.168.2.209', 1, 'NORMAL_TRIGGER', NULL, 1, '2020-03-10 00:08:20', '2020-03-10 00:08:20');
INSERT INTO `JOB_EXECUTION_LOG` VALUES ('a9b2f978-d7d3-4ce8-8537-66513415151b', 'com.zsinda.fdp.job.TestSimpleJob', 'com.zsinda.fdp.job.TestSimpleJob@-@0,1@-@READY@-@192.168.2.209@-@1820', 'cengxindadeMBP.lan', '192.168.2.209', 0, 'NORMAL_TRIGGER', NULL, 1, '2020-03-10 00:08:10', '2020-03-10 00:08:10');
INSERT INTO `JOB_EXECUTION_LOG` VALUES ('ac0a7be9-2705-481a-8302-cbd83b44da08', 'com.zsinda.fdp.job.TestSimpleJob', 'com.zsinda.fdp.job.TestSimpleJob@-@0,1@-@READY@-@192.168.2.209@-@1748', 'cengxindadeMBP.lan', '192.168.2.209', 0, 'NORMAL_TRIGGER', NULL, 1, '2020-03-10 00:02:10', '2020-03-10 00:02:10');
INSERT INTO `JOB_EXECUTION_LOG` VALUES ('b9a813dd-fb69-405f-9bec-dd20c5819d6f', 'com.zsinda.fdp.job.TestSimpleJob', 'com.zsinda.fdp.job.TestSimpleJob@-@0,1@-@READY@-@192.168.2.209@-@1730', 'cengxindadeMBP.lan', '192.168.2.209', 0, 'NORMAL_TRIGGER', NULL, 1, '2020-03-10 00:01:10', '2020-03-10 00:01:10');
INSERT INTO `JOB_EXECUTION_LOG` VALUES ('b9c80c54-8e3b-4e6d-a13a-3fc671274515', 'com.zsinda.fdp.job.TestSimpleJob', 'com.zsinda.fdp.job.TestSimpleJob@-@0,1@-@READY@-@192.168.2.209@-@1820', 'cengxindadeMBP.lan', '192.168.2.209', 1, 'NORMAL_TRIGGER', NULL, 1, '2020-03-10 00:07:50', '2020-03-10 00:07:50');
INSERT INTO `JOB_EXECUTION_LOG` VALUES ('bbb6c8ca-f7a3-401e-8432-422aa7c2c534', 'com.zsinda.fdp.job.TestSimpleJob', 'com.zsinda.fdp.job.TestSimpleJob@-@0,1@-@READY@-@192.168.2.209@-@1724', 'cengxindadeMBP.lan', '192.168.2.209', 1, 'NORMAL_TRIGGER', NULL, 1, '2020-03-10 00:00:00', '2020-03-10 00:00:00');
INSERT INTO `JOB_EXECUTION_LOG` VALUES ('c01798db-2b31-420c-82a1-ef718c5776c7', 'com.zsinda.fdp.job.TestSimpleJob', 'com.zsinda.fdp.job.TestSimpleJob@-@0,1@-@READY@-@192.168.2.209@-@1730', 'cengxindadeMBP.lan', '192.168.2.209', 0, 'NORMAL_TRIGGER', NULL, 1, '2020-03-10 00:00:30', '2020-03-10 00:00:30');
INSERT INTO `JOB_EXECUTION_LOG` VALUES ('c2f50e3c-eeed-42bf-a01a-053c2c95f087', 'com.zsinda.fdp.job.TestSimpleJob', 'com.zsinda.fdp.job.TestSimpleJob@-@0,1@-@READY@-@192.168.2.209@-@1730', 'cengxindadeMBP.lan', '192.168.2.209', 0, 'NORMAL_TRIGGER', NULL, 1, '2020-03-10 00:00:40', '2020-03-10 00:00:40');
INSERT INTO `JOB_EXECUTION_LOG` VALUES ('c3c6508c-38e3-46bf-ae91-b7a521e3dadf', 'com.zsinda.fdp.job.TestSimpleJob', 'com.zsinda.fdp.job.TestSimpleJob@-@0,1@-@READY@-@192.168.50.2@-@7429', 'cengxindadeMBP', '192.168.50.2', 1, 'NORMAL_TRIGGER', NULL, 1, '2020-03-10 15:06:10', '2020-03-10 15:06:10');
INSERT INTO `JOB_EXECUTION_LOG` VALUES ('d0bee10f-8806-4ffc-aefc-f32cde88cf2d', 'com.zsinda.fdp.job.TestSimpleJob', 'com.zsinda.fdp.job.TestSimpleJob@-@0,1@-@READY@-@192.168.2.209@-@1730', 'cengxindadeMBP.lan', '192.168.2.209', 1, 'NORMAL_TRIGGER', NULL, 1, '2020-03-10 00:00:40', '2020-03-10 00:00:40');
INSERT INTO `JOB_EXECUTION_LOG` VALUES ('d282156a-2710-46ea-8aa3-7754fe9ac02f', 'com.zsinda.fdp.job.TestSimpleJob', 'com.zsinda.fdp.job.TestSimpleJob@-@0,1@-@READY@-@192.168.50.2@-@7429', 'cengxindadeMBP', '192.168.50.2', 0, 'NORMAL_TRIGGER', NULL, 1, '2020-03-10 15:05:50', '2020-03-10 15:05:50');
INSERT INTO `JOB_EXECUTION_LOG` VALUES ('d329e1fa-2455-48d8-9a14-bb2d879a0880', 'com.zsinda.fdp.job.TestSimpleJob', 'com.zsinda.fdp.job.TestSimpleJob@-@0,1@-@READY@-@192.168.50.2@-@7429', 'cengxindadeMBP', '192.168.50.2', 1, 'NORMAL_TRIGGER', NULL, 1, '2020-03-10 15:06:20', '2020-03-10 15:06:20');
INSERT INTO `JOB_EXECUTION_LOG` VALUES ('d4c6ba0f-19e0-4844-8dce-07da0be3c73b', 'com.zsinda.fdp.job.TestSimpleJob', 'com.zsinda.fdp.job.TestSimpleJob@-@0,1@-@READY@-@192.168.2.209@-@1687', 'cengxindadeMBP.lan', '192.168.2.209', 0, 'NORMAL_TRIGGER', NULL, 1, '2020-03-09 23:57:50', '2020-03-09 23:57:50');
INSERT INTO `JOB_EXECUTION_LOG` VALUES ('d55719b4-e569-4e55-91b6-cf5625f6e358', 'com.zsinda.fdp.job.TestSimpleJob', 'com.zsinda.fdp.job.TestSimpleJob@-@0,1@-@READY@-@192.168.50.2@-@7429', 'cengxindadeMBP', '192.168.50.2', 0, 'NORMAL_TRIGGER', NULL, 1, '2020-03-10 15:06:00', '2020-03-10 15:06:00');
INSERT INTO `JOB_EXECUTION_LOG` VALUES ('d66de6f2-2b11-45ae-8163-c8255a8f61af', 'com.zsinda.fdp.job.TestSimpleJob', 'com.zsinda.fdp.job.TestSimpleJob@-@0,1@-@READY@-@192.168.2.209@-@1730', 'cengxindadeMBP.lan', '192.168.2.209', 0, 'NORMAL_TRIGGER', NULL, 1, '2020-03-10 00:01:00', '2020-03-10 00:01:00');
INSERT INTO `JOB_EXECUTION_LOG` VALUES ('d9b65e76-c99d-4909-981e-7eb04be08ec6', 'com.zsinda.fdp.job.TestSimpleJob', 'com.zsinda.fdp.job.TestSimpleJob@-@0,1@-@READY@-@192.168.50.2@-@6933', 'cengxindadeMBP', '192.168.50.2', 0, 'NORMAL_TRIGGER', NULL, 1, '2020-03-10 14:31:40', '2020-03-10 14:31:40');
INSERT INTO `JOB_EXECUTION_LOG` VALUES ('dc6b9ba6-bc23-45ef-8b0a-114149c8264d', 'com.zsinda.fdp.job.TestSimpleJob', 'com.zsinda.fdp.job.TestSimpleJob@-@0,1@-@READY@-@192.168.50.2@-@7429', 'cengxindadeMBP', '192.168.50.2', 0, 'NORMAL_TRIGGER', NULL, 1, '2020-03-10 15:05:40', '2020-03-10 15:05:40');
INSERT INTO `JOB_EXECUTION_LOG` VALUES ('e7255d6a-f07d-4adc-8a9d-b48bf16d5bd5', 'com.zsinda.fdp.job.TestSimpleJob', 'com.zsinda.fdp.job.TestSimpleJob@-@0,1@-@READY@-@192.168.2.209@-@1730', 'cengxindadeMBP.lan', '192.168.2.209', 0, 'NORMAL_TRIGGER', NULL, 1, '2020-03-10 00:00:20', '2020-03-10 00:00:20');
INSERT INTO `JOB_EXECUTION_LOG` VALUES ('eb31f1ed-0d70-441a-8adf-4f1f8621ca58', 'com.zsinda.fdp.job.TestSimpleJob', 'com.zsinda.fdp.job.TestSimpleJob@-@0,1@-@READY@-@192.168.50.2@-@7429', 'cengxindadeMBP', '192.168.50.2', 0, 'NORMAL_TRIGGER', NULL, 1, '2020-03-10 15:06:30', '2020-03-10 15:06:30');
INSERT INTO `JOB_EXECUTION_LOG` VALUES ('f866bd5a-1d3c-4101-86fe-d6bc3a62e96e', 'com.zsinda.fdp.job.TestSimpleJob', 'com.zsinda.fdp.job.TestSimpleJob@-@0,1@-@READY@-@192.168.2.209@-@1748', 'cengxindadeMBP.lan', '192.168.2.209', 0, 'NORMAL_TRIGGER', NULL, 1, '2020-03-10 00:02:00', '2020-03-10 00:02:00');
INSERT INTO `JOB_EXECUTION_LOG` VALUES ('f8b08263-4885-4968-916d-e6f6408885dc', 'com.zsinda.fdp.job.TestSimpleJob', 'com.zsinda.fdp.job.TestSimpleJob@-@0,1@-@READY@-@192.168.2.209@-@1724', 'cengxindadeMBP.lan', '192.168.2.209', 0, 'NORMAL_TRIGGER', NULL, 1, '2020-03-10 00:00:00', '2020-03-10 00:00:00');
INSERT INTO `JOB_EXECUTION_LOG` VALUES ('fec0ac74-5ff8-47f2-8577-26b5f4cc74c6', 'com.zsinda.fdp.job.TestSimpleJob', 'com.zsinda.fdp.job.TestSimpleJob@-@0,1@-@READY@-@192.168.50.2@-@7429', 'cengxindadeMBP', '192.168.50.2', 1, 'NORMAL_TRIGGER', NULL, 1, '2020-03-10 15:06:00', '2020-03-10 15:06:00');
INSERT INTO `JOB_EXECUTION_LOG` VALUES ('ff4c4c9e-cf49-4dff-bd30-660bde28b327', 'com.zsinda.fdp.job.TestSimpleJob', 'com.zsinda.fdp.job.TestSimpleJob@-@0,1@-@READY@-@192.168.50.2@-@6958', 'cengxindadeMBP', '192.168.50.2', 1, 'NORMAL_TRIGGER', NULL, 1, '2020-03-10 14:32:50', '2020-03-10 14:32:50');
COMMIT;

-- ----------------------------
-- Table structure for JOB_STATUS_TRACE_LOG
-- ----------------------------
DROP TABLE IF EXISTS `JOB_STATUS_TRACE_LOG`;
CREATE TABLE `JOB_STATUS_TRACE_LOG` (
  `id` varchar(40) NOT NULL,
  `job_name` varchar(100) DEFAULT NULL,
  `original_task_id` varchar(255) DEFAULT NULL,
  `task_id` varchar(255) DEFAULT NULL,
  `slave_id` varchar(50) DEFAULT NULL,
  `source` varchar(50) DEFAULT NULL,
  `execution_type` varchar(20) DEFAULT NULL,
  `sharding_item` varchar(100) DEFAULT NULL,
  `state` varchar(20) DEFAULT NULL,
  `message` varchar(4000) DEFAULT NULL,
  `creation_time` timestamp NULL DEFAULT NULL,
  PRIMARY KEY (`id`) USING BTREE
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

-- ----------------------------
-- Records of JOB_STATUS_TRACE_LOG
-- ----------------------------
BEGIN;
INSERT INTO `JOB_STATUS_TRACE_LOG` VALUES ('0f7859ca-6ac4-4900-a593-b21cdb5edfa7', 'com.zsinda.fdp.job.TestSimpleJob', '', 'com.zsinda.fdp.job.TestSimpleJob@-@0,1@-@READY@-@192.168.50.2@-@7429', '192.168.50.2', 'LITE_EXECUTOR', 'READY', '[0, 1]', 'TASK_STAGING', 'Job \'com.zsinda.fdp.job.TestSimpleJob\' execute begin.', '2020-03-10 15:06:30');
INSERT INTO `JOB_STATUS_TRACE_LOG` VALUES ('10d8dfe9-8a37-4691-a2ef-788bb590a839', 'com.zsinda.fdp.job.TestSimpleJob', '', 'com.zsinda.fdp.job.TestSimpleJob@-@0,1@-@READY@-@192.168.50.2@-@6958', '192.168.50.2', 'LITE_EXECUTOR', 'READY', '[0, 1]', 'TASK_RUNNING', '', '2020-03-10 14:33:00');
INSERT INTO `JOB_STATUS_TRACE_LOG` VALUES ('15a7e444-f023-46f0-95be-65df687688d9', 'com.zsinda.fdp.job.TestSimpleJob', '', 'com.zsinda.fdp.job.TestSimpleJob@-@0,1@-@READY@-@192.168.50.2@-@7429', '192.168.50.2', 'LITE_EXECUTOR', 'READY', '[0, 1]', 'TASK_FINISHED', '', '2020-03-10 15:06:20');
INSERT INTO `JOB_STATUS_TRACE_LOG` VALUES ('3346eb8a-e070-44d8-b30a-fef7422808af', 'com.zsinda.fdp.job.TestSimpleJob', '', 'com.zsinda.fdp.job.TestSimpleJob@-@0,1@-@READY@-@192.168.50.2@-@6933', '192.168.50.2', 'LITE_EXECUTOR', 'READY', '[0, 1]', 'TASK_RUNNING', '', '2020-03-10 14:31:50');
INSERT INTO `JOB_STATUS_TRACE_LOG` VALUES ('34f8f6d1-4cfc-4b46-b1d5-557e9b9afdec', 'com.zsinda.fdp.job.TestSimpleJob', '', 'com.zsinda.fdp.job.TestSimpleJob@-@0,1@-@READY@-@192.168.50.2@-@6958', '192.168.50.2', 'LITE_EXECUTOR', 'READY', '[0, 1]', 'TASK_FINISHED', '', '2020-03-10 14:32:50');
INSERT INTO `JOB_STATUS_TRACE_LOG` VALUES ('36c0ced0-c371-4aa8-9482-72c83ab98ac1', 'com.zsinda.fdp.job.TestSimpleJob', '', 'com.zsinda.fdp.job.TestSimpleJob@-@0,1@-@READY@-@192.168.2.209@-@1820', '192.168.2.209', 'LITE_EXECUTOR', 'READY', '[0, 1]', 'TASK_RUNNING', '', '2020-03-10 00:08:10');
INSERT INTO `JOB_STATUS_TRACE_LOG` VALUES ('45339c1a-eb1b-425a-af2d-3b866ad97430', 'com.zsinda.fdp.job.TestSimpleJob', '', 'com.zsinda.fdp.job.TestSimpleJob@-@0,1@-@READY@-@192.168.50.2@-@6958', '192.168.50.2', 'LITE_EXECUTOR', 'READY', '[0, 1]', 'TASK_STAGING', 'Job \'com.zsinda.fdp.job.TestSimpleJob\' execute begin.', '2020-03-10 14:33:00');
INSERT INTO `JOB_STATUS_TRACE_LOG` VALUES ('46375c85-474e-4bfc-b2cc-7e3ef7fb2472', 'com.zsinda.fdp.job.TestSimpleJob', '', 'com.zsinda.fdp.job.TestSimpleJob@-@0,1@-@READY@-@192.168.2.209@-@1820', '192.168.2.209', 'LITE_EXECUTOR', 'READY', '[0, 1]', 'TASK_STAGING', 'Job \'com.zsinda.fdp.job.TestSimpleJob\' execute begin.', '2020-03-10 00:08:20');
INSERT INTO `JOB_STATUS_TRACE_LOG` VALUES ('4718ff9e-9eb1-47cb-93d0-396133e7c718', 'com.zsinda.fdp.job.TestSimpleJob', '', 'com.zsinda.fdp.job.TestSimpleJob@-@0,1@-@READY@-@192.168.50.2@-@6946', '192.168.50.2', 'LITE_EXECUTOR', 'READY', '[0, 1]', 'TASK_FINISHED', '', '2020-03-10 14:32:20');
INSERT INTO `JOB_STATUS_TRACE_LOG` VALUES ('498a0c69-c55a-453b-80a6-d884044a0671', 'com.zsinda.fdp.job.TestSimpleJob', '', 'com.zsinda.fdp.job.TestSimpleJob@-@0,1@-@READY@-@192.168.2.209@-@1820', '192.168.2.209', 'LITE_EXECUTOR', 'READY', '[0, 1]', 'TASK_FINISHED', '', '2020-03-10 00:08:30');
INSERT INTO `JOB_STATUS_TRACE_LOG` VALUES ('507f7c99-7fcd-4ff7-9c0d-299beca09c5d', 'com.zsinda.fdp.job.TestSimpleJob', '', 'com.zsinda.fdp.job.TestSimpleJob@-@0,1@-@READY@-@192.168.50.2@-@7429', '192.168.50.2', 'LITE_EXECUTOR', 'READY', '[0, 1]', 'TASK_STAGING', 'Job \'com.zsinda.fdp.job.TestSimpleJob\' execute begin.', '2020-03-10 15:06:10');
INSERT INTO `JOB_STATUS_TRACE_LOG` VALUES ('5469f3cb-42c0-4608-b3db-152a454322f4', 'com.zsinda.fdp.job.TestSimpleJob', '', 'com.zsinda.fdp.job.TestSimpleJob@-@0,1@-@READY@-@192.168.50.2@-@6933', '192.168.50.2', 'LITE_EXECUTOR', 'READY', '[0, 1]', 'TASK_STAGING', 'Job \'com.zsinda.fdp.job.TestSimpleJob\' execute begin.', '2020-03-10 14:31:50');
INSERT INTO `JOB_STATUS_TRACE_LOG` VALUES ('559c0b0a-75dc-4169-a6f6-3d68c5beb4b9', 'com.zsinda.fdp.job.TestSimpleJob', '', 'com.zsinda.fdp.job.TestSimpleJob@-@0,1@-@READY@-@192.168.50.2@-@6933', '192.168.50.2', 'LITE_EXECUTOR', 'READY', '[0, 1]', 'TASK_FINISHED', '', '2020-03-10 14:31:30');
INSERT INTO `JOB_STATUS_TRACE_LOG` VALUES ('651717ec-d981-4ee8-a222-3cb892c4feae', 'com.zsinda.fdp.job.TestSimpleJob', '', 'com.zsinda.fdp.job.TestSimpleJob@-@0,1@-@READY@-@192.168.50.2@-@6946', '192.168.50.2', 'LITE_EXECUTOR', 'READY', '[0, 1]', 'TASK_RUNNING', '', '2020-03-10 14:32:10');
INSERT INTO `JOB_STATUS_TRACE_LOG` VALUES ('66339db6-d262-4bbb-b1a0-ee33260cacac', 'com.zsinda.fdp.job.TestSimpleJob', '', 'com.zsinda.fdp.job.TestSimpleJob@-@0,1@-@READY@-@192.168.50.2@-@7429', '192.168.50.2', 'LITE_EXECUTOR', 'READY', '[0, 1]', 'TASK_STAGING', 'Job \'com.zsinda.fdp.job.TestSimpleJob\' execute begin.', '2020-03-10 15:05:50');
INSERT INTO `JOB_STATUS_TRACE_LOG` VALUES ('6b30059f-daae-4a74-88fe-58363f534448', 'com.zsinda.fdp.job.TestSimpleJob', '', 'com.zsinda.fdp.job.TestSimpleJob@-@0,1@-@READY@-@192.168.50.2@-@7429', '192.168.50.2', 'LITE_EXECUTOR', 'READY', '[0, 1]', 'TASK_RUNNING', '', '2020-03-10 15:06:20');
INSERT INTO `JOB_STATUS_TRACE_LOG` VALUES ('6f2eaa00-6049-4e50-8195-72f84170e9d2', 'com.zsinda.fdp.job.TestSimpleJob', '', 'com.zsinda.fdp.job.TestSimpleJob@-@0,1@-@READY@-@192.168.2.209@-@1820', '192.168.2.209', 'LITE_EXECUTOR', 'READY', '[0, 1]', 'TASK_FINISHED', '', '2020-03-10 00:08:10');
INSERT INTO `JOB_STATUS_TRACE_LOG` VALUES ('75ea3b00-9093-4d3f-8609-a999d5b6513d', 'com.zsinda.fdp.job.TestSimpleJob', '', 'com.zsinda.fdp.job.TestSimpleJob@-@0,1@-@READY@-@192.168.50.2@-@6958', '192.168.50.2', 'LITE_EXECUTOR', 'READY', '[0, 1]', 'TASK_FINISHED', '', '2020-03-10 14:33:00');
INSERT INTO `JOB_STATUS_TRACE_LOG` VALUES ('78e209fd-bb97-44d9-a242-3ff3c072a554', 'com.zsinda.fdp.job.TestSimpleJob', '', 'com.zsinda.fdp.job.TestSimpleJob@-@0,1@-@READY@-@192.168.50.2@-@6958', '192.168.50.2', 'LITE_EXECUTOR', 'READY', '[0, 1]', 'TASK_RUNNING', '', '2020-03-10 14:32:50');
INSERT INTO `JOB_STATUS_TRACE_LOG` VALUES ('793f9b44-cee7-44d6-a00d-597bc61e0c6c', 'com.zsinda.fdp.job.TestSimpleJob', '', 'com.zsinda.fdp.job.TestSimpleJob@-@0,1@-@READY@-@192.168.50.2@-@7429', '192.168.50.2', 'LITE_EXECUTOR', 'READY', '[0, 1]', 'TASK_RUNNING', '', '2020-03-10 15:06:10');
INSERT INTO `JOB_STATUS_TRACE_LOG` VALUES ('7c119913-9854-4b7d-9700-e61fa4c7faad', 'com.zsinda.fdp.job.TestSimpleJob', '', 'com.zsinda.fdp.job.TestSimpleJob@-@0,1@-@READY@-@192.168.50.2@-@6933', '192.168.50.2', 'LITE_EXECUTOR', 'READY', '[0, 1]', 'TASK_RUNNING', '', '2020-03-10 14:31:30');
INSERT INTO `JOB_STATUS_TRACE_LOG` VALUES ('7eca0931-d397-4931-a564-6e92b8e9213f', 'com.zsinda.fdp.job.TestSimpleJob', '', 'com.zsinda.fdp.job.TestSimpleJob@-@0,1@-@READY@-@192.168.50.2@-@7429', '192.168.50.2', 'LITE_EXECUTOR', 'READY', '[0, 1]', 'TASK_FINISHED', '', '2020-03-10 15:06:10');
INSERT INTO `JOB_STATUS_TRACE_LOG` VALUES ('808e1a9d-ee94-4b8c-9594-0809e19879ba', 'com.zsinda.fdp.job.TestSimpleJob', '', 'com.zsinda.fdp.job.TestSimpleJob@-@0,1@-@READY@-@192.168.2.209@-@1820', '192.168.2.209', 'LITE_EXECUTOR', 'READY', '[0, 1]', 'TASK_RUNNING', '', '2020-03-10 00:08:00');
INSERT INTO `JOB_STATUS_TRACE_LOG` VALUES ('82f71491-264b-4250-884b-6c3e73215aa6', 'com.zsinda.fdp.job.TestSimpleJob', '', 'com.zsinda.fdp.job.TestSimpleJob@-@0,1@-@READY@-@192.168.2.209@-@1820', '192.168.2.209', 'LITE_EXECUTOR', 'READY', '[0, 1]', 'TASK_STAGING', 'Job \'com.zsinda.fdp.job.TestSimpleJob\' execute begin.', '2020-03-10 00:07:50');
INSERT INTO `JOB_STATUS_TRACE_LOG` VALUES ('8833cc04-3181-4312-a53a-c417c7f88b84', 'com.zsinda.fdp.job.TestSimpleJob', '', 'com.zsinda.fdp.job.TestSimpleJob@-@0,1@-@READY@-@192.168.2.209@-@1820', '192.168.2.209', 'LITE_EXECUTOR', 'READY', '[0, 1]', 'TASK_RUNNING', '', '2020-03-10 00:08:20');
INSERT INTO `JOB_STATUS_TRACE_LOG` VALUES ('8d5d6ac8-4eca-4ba2-9b69-3e32f15fa31f', 'com.zsinda.fdp.job.TestSimpleJob', '', 'com.zsinda.fdp.job.TestSimpleJob@-@0,1@-@READY@-@192.168.2.209@-@1820', '192.168.2.209', 'LITE_EXECUTOR', 'READY', '[0, 1]', 'TASK_RUNNING', '', '2020-03-10 00:07:50');
INSERT INTO `JOB_STATUS_TRACE_LOG` VALUES ('8d7ac0c4-6f8c-498e-a810-1e250dfe3056', 'com.zsinda.fdp.job.TestSimpleJob', '', 'com.zsinda.fdp.job.TestSimpleJob@-@0,1@-@READY@-@192.168.50.2@-@7429', '192.168.50.2', 'LITE_EXECUTOR', 'READY', '[0, 1]', 'TASK_FINISHED', '', '2020-03-10 15:06:00');
INSERT INTO `JOB_STATUS_TRACE_LOG` VALUES ('8f2072e9-c2e5-4367-bd48-24327f1326d1', 'com.zsinda.fdp.job.TestSimpleJob', '', 'com.zsinda.fdp.job.TestSimpleJob@-@0,1@-@READY@-@192.168.50.2@-@7429', '192.168.50.2', 'LITE_EXECUTOR', 'READY', '[0, 1]', 'TASK_RUNNING', '', '2020-03-10 15:06:00');
INSERT INTO `JOB_STATUS_TRACE_LOG` VALUES ('8f25b615-0c34-48ce-bd26-a3febae07cb9', 'com.zsinda.fdp.job.TestSimpleJob', '', 'com.zsinda.fdp.job.TestSimpleJob@-@0,1@-@READY@-@192.168.50.2@-@7429', '192.168.50.2', 'LITE_EXECUTOR', 'READY', '[0, 1]', 'TASK_RUNNING', '', '2020-03-10 15:06:30');
INSERT INTO `JOB_STATUS_TRACE_LOG` VALUES ('9ac9a5b9-1876-4058-a57a-4fb5b89e1243', 'com.zsinda.fdp.job.TestSimpleJob', '', 'com.zsinda.fdp.job.TestSimpleJob@-@0,1@-@READY@-@192.168.2.209@-@1820', '192.168.2.209', 'LITE_EXECUTOR', 'READY', '[0, 1]', 'TASK_FINISHED', '', '2020-03-10 00:07:50');
INSERT INTO `JOB_STATUS_TRACE_LOG` VALUES ('a4d229dc-6274-4677-beac-1e7b7ad8f94a', 'com.zsinda.fdp.job.TestSimpleJob', '', 'com.zsinda.fdp.job.TestSimpleJob@-@0,1@-@READY@-@192.168.50.2@-@6933', '192.168.50.2', 'LITE_EXECUTOR', 'READY', '[0, 1]', 'TASK_RUNNING', '', '2020-03-10 14:31:40');
INSERT INTO `JOB_STATUS_TRACE_LOG` VALUES ('a8b986f6-4bea-4b5b-aa2a-9fa2e70b290f', 'com.zsinda.fdp.job.TestSimpleJob', '', 'com.zsinda.fdp.job.TestSimpleJob@-@0,1@-@READY@-@192.168.2.209@-@1820', '192.168.2.209', 'LITE_EXECUTOR', 'READY', '[0, 1]', 'TASK_RUNNING', '', '2020-03-10 00:08:30');
INSERT INTO `JOB_STATUS_TRACE_LOG` VALUES ('ae36e9aa-a4ab-4060-a530-4f9cd7787bb0', 'com.zsinda.fdp.job.TestSimpleJob', '', 'com.zsinda.fdp.job.TestSimpleJob@-@0,1@-@READY@-@192.168.50.2@-@7429', '192.168.50.2', 'LITE_EXECUTOR', 'READY', '[0, 1]', 'TASK_FINISHED', '', '2020-03-10 15:06:30');
INSERT INTO `JOB_STATUS_TRACE_LOG` VALUES ('b27ca25d-620b-44e9-9c39-afcc953b74bd', 'com.zsinda.fdp.job.TestSimpleJob', '', 'com.zsinda.fdp.job.TestSimpleJob@-@0,1@-@READY@-@192.168.50.2@-@6933', '192.168.50.2', 'LITE_EXECUTOR', 'READY', '[0, 1]', 'TASK_FINISHED', '', '2020-03-10 14:31:50');
INSERT INTO `JOB_STATUS_TRACE_LOG` VALUES ('b6334fd3-7b7a-4dbd-83c1-9c0df8113fd1', 'com.zsinda.fdp.job.TestSimpleJob', '', 'com.zsinda.fdp.job.TestSimpleJob@-@0,1@-@READY@-@192.168.50.2@-@6946', '192.168.50.2', 'LITE_EXECUTOR', 'READY', '[0, 1]', 'TASK_STAGING', 'Job \'com.zsinda.fdp.job.TestSimpleJob\' execute begin.', '2020-03-10 14:32:20');
INSERT INTO `JOB_STATUS_TRACE_LOG` VALUES ('b6769fb1-3366-47e1-8e99-574f607f7fb2', 'com.zsinda.fdp.job.TestSimpleJob', '', 'com.zsinda.fdp.job.TestSimpleJob@-@0,1@-@READY@-@192.168.50.2@-@6933', '192.168.50.2', 'LITE_EXECUTOR', 'READY', '[0, 1]', 'TASK_FINISHED', '', '2020-03-10 14:31:40');
INSERT INTO `JOB_STATUS_TRACE_LOG` VALUES ('c756a1c9-ff29-46e4-838d-89db275e6b80', 'com.zsinda.fdp.job.TestSimpleJob', '', 'com.zsinda.fdp.job.TestSimpleJob@-@0,1@-@READY@-@192.168.2.209@-@1820', '192.168.2.209', 'LITE_EXECUTOR', 'READY', '[0, 1]', 'TASK_FINISHED', '', '2020-03-10 00:08:20');
INSERT INTO `JOB_STATUS_TRACE_LOG` VALUES ('c95649eb-307c-4591-b38c-5b5348b4928d', 'com.zsinda.fdp.job.TestSimpleJob', '', 'com.zsinda.fdp.job.TestSimpleJob@-@0,1@-@READY@-@192.168.50.2@-@7429', '192.168.50.2', 'LITE_EXECUTOR', 'READY', '[0, 1]', 'TASK_RUNNING', '', '2020-03-10 15:05:50');
INSERT INTO `JOB_STATUS_TRACE_LOG` VALUES ('cc79a1a4-ff19-4b5b-be69-93b74acddf4d', 'com.zsinda.fdp.job.TestSimpleJob', '', 'com.zsinda.fdp.job.TestSimpleJob@-@0,1@-@READY@-@192.168.50.2@-@6958', '192.168.50.2', 'LITE_EXECUTOR', 'READY', '[0, 1]', 'TASK_STAGING', 'Job \'com.zsinda.fdp.job.TestSimpleJob\' execute begin.', '2020-03-10 14:32:50');
INSERT INTO `JOB_STATUS_TRACE_LOG` VALUES ('cf861b8c-4654-4a83-985d-442e2ff349b1', 'com.zsinda.fdp.job.TestSimpleJob', '', 'com.zsinda.fdp.job.TestSimpleJob@-@0,1@-@READY@-@192.168.50.2@-@6946', '192.168.50.2', 'LITE_EXECUTOR', 'READY', '[0, 1]', 'TASK_STAGING', 'Job \'com.zsinda.fdp.job.TestSimpleJob\' execute begin.', '2020-03-10 14:32:10');
INSERT INTO `JOB_STATUS_TRACE_LOG` VALUES ('d312b8b1-aa8b-4fcf-92a2-85ec535cdf8c', 'com.zsinda.fdp.job.TestSimpleJob', '', 'com.zsinda.fdp.job.TestSimpleJob@-@0,1@-@READY@-@192.168.50.2@-@7429', '192.168.50.2', 'LITE_EXECUTOR', 'READY', '[0, 1]', 'TASK_STAGING', 'Job \'com.zsinda.fdp.job.TestSimpleJob\' execute begin.', '2020-03-10 15:06:20');
INSERT INTO `JOB_STATUS_TRACE_LOG` VALUES ('d5d8dba4-5d16-42d5-8ef4-972bfe4b781d', 'com.zsinda.fdp.job.TestSimpleJob', '', 'com.zsinda.fdp.job.TestSimpleJob@-@0,1@-@READY@-@192.168.2.209@-@1820', '192.168.2.209', 'LITE_EXECUTOR', 'READY', '[0, 1]', 'TASK_FINISHED', '', '2020-03-10 00:08:00');
INSERT INTO `JOB_STATUS_TRACE_LOG` VALUES ('d9e75f61-88f9-4e5b-ad74-c81cfee6abc6', 'com.zsinda.fdp.job.TestSimpleJob', '', 'com.zsinda.fdp.job.TestSimpleJob@-@0,1@-@READY@-@192.168.2.209@-@1820', '192.168.2.209', 'LITE_EXECUTOR', 'READY', '[0, 1]', 'TASK_STAGING', 'Job \'com.zsinda.fdp.job.TestSimpleJob\' execute begin.', '2020-03-10 00:08:00');
INSERT INTO `JOB_STATUS_TRACE_LOG` VALUES ('db66dda9-2b22-4c60-bd04-e7f9aa6cb49c', 'com.zsinda.fdp.job.TestSimpleJob', '', 'com.zsinda.fdp.job.TestSimpleJob@-@0,1@-@READY@-@192.168.50.2@-@7429', '192.168.50.2', 'LITE_EXECUTOR', 'READY', '[0, 1]', 'TASK_RUNNING', '', '2020-03-10 15:05:40');
INSERT INTO `JOB_STATUS_TRACE_LOG` VALUES ('dccdffbd-e0bb-4906-80a5-13e8a7f56947', 'com.zsinda.fdp.job.TestSimpleJob', '', 'com.zsinda.fdp.job.TestSimpleJob@-@0,1@-@READY@-@192.168.50.2@-@6946', '192.168.50.2', 'LITE_EXECUTOR', 'READY', '[0, 1]', 'TASK_RUNNING', '', '2020-03-10 14:32:20');
INSERT INTO `JOB_STATUS_TRACE_LOG` VALUES ('e4cbb5f5-8d41-4b7a-b5e5-e30894274a7d', 'com.zsinda.fdp.job.TestSimpleJob', '', 'com.zsinda.fdp.job.TestSimpleJob@-@0,1@-@READY@-@192.168.50.2@-@7429', '192.168.50.2', 'LITE_EXECUTOR', 'READY', '[0, 1]', 'TASK_FINISHED', '', '2020-03-10 15:05:40');
INSERT INTO `JOB_STATUS_TRACE_LOG` VALUES ('e7c2d5ca-68ee-4a7d-ab5b-4d6b83a286e6', 'com.zsinda.fdp.job.TestSimpleJob', '', 'com.zsinda.fdp.job.TestSimpleJob@-@0,1@-@READY@-@192.168.50.2@-@6933', '192.168.50.2', 'LITE_EXECUTOR', 'READY', '[0, 1]', 'TASK_STAGING', 'Job \'com.zsinda.fdp.job.TestSimpleJob\' execute begin.', '2020-03-10 14:31:30');
INSERT INTO `JOB_STATUS_TRACE_LOG` VALUES ('ec744184-708d-4f68-8df3-02f302d61c2b', 'com.zsinda.fdp.job.TestSimpleJob', '', 'com.zsinda.fdp.job.TestSimpleJob@-@0,1@-@READY@-@192.168.50.2@-@7429', '192.168.50.2', 'LITE_EXECUTOR', 'READY', '[0, 1]', 'TASK_FINISHED', '', '2020-03-10 15:05:50');
INSERT INTO `JOB_STATUS_TRACE_LOG` VALUES ('eebd611a-536e-4a91-a6f7-ef312e515eec', 'com.zsinda.fdp.job.TestSimpleJob', '', 'com.zsinda.fdp.job.TestSimpleJob@-@0,1@-@READY@-@192.168.50.2@-@6933', '192.168.50.2', 'LITE_EXECUTOR', 'READY', '[0, 1]', 'TASK_STAGING', 'Job \'com.zsinda.fdp.job.TestSimpleJob\' execute begin.', '2020-03-10 14:31:40');
INSERT INTO `JOB_STATUS_TRACE_LOG` VALUES ('efc654f2-8150-4f6b-a71e-54989e4f364f', 'com.zsinda.fdp.job.TestSimpleJob', '', 'com.zsinda.fdp.job.TestSimpleJob@-@0,1@-@READY@-@192.168.50.2@-@6946', '192.168.50.2', 'LITE_EXECUTOR', 'READY', '[0, 1]', 'TASK_FINISHED', '', '2020-03-10 14:32:10');
INSERT INTO `JOB_STATUS_TRACE_LOG` VALUES ('f21f2772-dd47-4017-a488-de96a142012d', 'com.zsinda.fdp.job.TestSimpleJob', '', 'com.zsinda.fdp.job.TestSimpleJob@-@0,1@-@READY@-@192.168.50.2@-@7429', '192.168.50.2', 'LITE_EXECUTOR', 'READY', '[0, 1]', 'TASK_STAGING', 'Job \'com.zsinda.fdp.job.TestSimpleJob\' execute begin.', '2020-03-10 15:06:00');
INSERT INTO `JOB_STATUS_TRACE_LOG` VALUES ('f40bdafe-6c01-4460-a6b4-219c129ca51f', 'com.zsinda.fdp.job.TestSimpleJob', '', 'com.zsinda.fdp.job.TestSimpleJob@-@0,1@-@READY@-@192.168.2.209@-@1820', '192.168.2.209', 'LITE_EXECUTOR', 'READY', '[0, 1]', 'TASK_STAGING', 'Job \'com.zsinda.fdp.job.TestSimpleJob\' execute begin.', '2020-03-10 00:08:30');
INSERT INTO `JOB_STATUS_TRACE_LOG` VALUES ('f55968b3-3d31-45f5-8848-f5c852a66f2f', 'com.zsinda.fdp.job.TestSimpleJob', '', 'com.zsinda.fdp.job.TestSimpleJob@-@0,1@-@READY@-@192.168.2.209@-@1820', '192.168.2.209', 'LITE_EXECUTOR', 'READY', '[0, 1]', 'TASK_STAGING', 'Job \'com.zsinda.fdp.job.TestSimpleJob\' execute begin.', '2020-03-10 00:08:10');
INSERT INTO `JOB_STATUS_TRACE_LOG` VALUES ('fa147a10-d2e0-4030-88f4-44168aa3aa38', 'com.zsinda.fdp.job.TestSimpleJob', '', 'com.zsinda.fdp.job.TestSimpleJob@-@0,1@-@READY@-@192.168.50.2@-@7429', '192.168.50.2', 'LITE_EXECUTOR', 'READY', '[0, 1]', 'TASK_STAGING', 'Job \'com.zsinda.fdp.job.TestSimpleJob\' execute begin.', '2020-03-10 15:05:40');
COMMIT;

SET FOREIGN_KEY_CHECKS = 1;