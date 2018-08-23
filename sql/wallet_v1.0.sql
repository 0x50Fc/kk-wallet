
#钱包
CREATE TABLE IF NOT EXISTS `wallet_1_wallet` (
	id BIGINT NOT NULL	#ID
	,`value` BIGINT DEFAULT 0	#[字段] 余额(分)
	,`inValue` BIGINT DEFAULT 0	#[字段] 累计收入(分)
	,`outValue` BIGINT DEFAULT 0	#[字段] 累计支出(分)
	,`iid` BIGINT DEFAULT 0	#[字段] 最后流水号
	,`ctime` BIGINT DEFAULT 0	#[字段] 创建时间
	,`mtime` BIGINT DEFAULT 0	#[字段] 修改时间
	, PRIMARY KEY(id) 
 ) ;
#订单
CREATE TABLE IF NOT EXISTS `wallet_1_order` (
	id BIGINT NOT NULL	#ID
	,`fitemId` BIGINT DEFAULT 0	#[字段] 支出流水ID
	,`titemId` BIGINT DEFAULT 0	#[字段] 收入流水ID
	,`fwalletId` BIGINT DEFAULT 0	#[字段] 支出钱包ID
	,`twalletId` BIGINT DEFAULT 0	#[字段] 收入钱包ID
	,`value` BIGINT DEFAULT 0	#[字段] 交易金额(分)
	,`ctime` BIGINT DEFAULT 0	#[字段] 创建时间
	, PRIMARY KEY(id) 
 ) ;
#交易流水
CREATE TABLE IF NOT EXISTS `wallet_1_item` (
	id BIGINT NOT NULL AUTO_INCREMENT	#ID
	,`iid` BIGINT DEFAULT 0	#[字段] 流水号
	,`walletId` BIGINT DEFAULT 0	#[字段] 钱包ID
	,`orderId` BIGINT DEFAULT 0	#[字段] 订单ID
	,`walletValue` BIGINT DEFAULT 0	#[字段] 变更后余额(分)
	,`value` BIGINT DEFAULT 0	#[字段] 增加的余额(分)
	,`ctime` BIGINT DEFAULT 0	#[字段] 创建时间
	, PRIMARY KEY(id) 
	,INDEX `iid` (`iid` asc)	#[索引] 流水号
	,INDEX `walletId` (`walletId` asc)	#[索引] 钱包ID
	,INDEX `orderId` (`orderId` asc)	#[索引] 订单ID
	,INDEX `ctime` (`ctime` desc)	#[索引] 创建时间
 ) AUTO_INCREMENT = 1;
#钱包
CREATE TABLE IF NOT EXISTS `wallet_2_wallet` (
	id BIGINT NOT NULL	#ID
	,`value` BIGINT DEFAULT 0	#[字段] 余额(分)
	,`inValue` BIGINT DEFAULT 0	#[字段] 累计收入(分)
	,`outValue` BIGINT DEFAULT 0	#[字段] 累计支出(分)
	,`iid` BIGINT DEFAULT 0	#[字段] 最后流水号
	,`ctime` BIGINT DEFAULT 0	#[字段] 创建时间
	,`mtime` BIGINT DEFAULT 0	#[字段] 修改时间
	, PRIMARY KEY(id) 
 ) ;
#订单
CREATE TABLE IF NOT EXISTS `wallet_2_order` (
	id BIGINT NOT NULL	#ID
	,`fitemId` BIGINT DEFAULT 0	#[字段] 支出流水ID
	,`titemId` BIGINT DEFAULT 0	#[字段] 收入流水ID
	,`fwalletId` BIGINT DEFAULT 0	#[字段] 支出钱包ID
	,`twalletId` BIGINT DEFAULT 0	#[字段] 收入钱包ID
	,`value` BIGINT DEFAULT 0	#[字段] 交易金额(分)
	,`ctime` BIGINT DEFAULT 0	#[字段] 创建时间
	, PRIMARY KEY(id) 
 ) ;
#交易流水
CREATE TABLE IF NOT EXISTS `wallet_2_item` (
	id BIGINT NOT NULL AUTO_INCREMENT	#ID
	,`iid` BIGINT DEFAULT 0	#[字段] 流水号
	,`walletId` BIGINT DEFAULT 0	#[字段] 钱包ID
	,`orderId` BIGINT DEFAULT 0	#[字段] 订单ID
	,`walletValue` BIGINT DEFAULT 0	#[字段] 变更后余额(分)
	,`value` BIGINT DEFAULT 0	#[字段] 增加的余额(分)
	,`ctime` BIGINT DEFAULT 0	#[字段] 创建时间
	, PRIMARY KEY(id) 
	,INDEX `iid` (`iid` asc)	#[索引] 流水号
	,INDEX `walletId` (`walletId` asc)	#[索引] 钱包ID
	,INDEX `orderId` (`orderId` asc)	#[索引] 订单ID
	,INDEX `ctime` (`ctime` desc)	#[索引] 创建时间
 ) AUTO_INCREMENT = 1;
#钱包
CREATE TABLE IF NOT EXISTS `wallet_3_wallet` (
	id BIGINT NOT NULL	#ID
	,`value` BIGINT DEFAULT 0	#[字段] 余额(分)
	,`inValue` BIGINT DEFAULT 0	#[字段] 累计收入(分)
	,`outValue` BIGINT DEFAULT 0	#[字段] 累计支出(分)
	,`iid` BIGINT DEFAULT 0	#[字段] 最后流水号
	,`ctime` BIGINT DEFAULT 0	#[字段] 创建时间
	,`mtime` BIGINT DEFAULT 0	#[字段] 修改时间
	, PRIMARY KEY(id) 
 ) ;
#订单
CREATE TABLE IF NOT EXISTS `wallet_3_order` (
	id BIGINT NOT NULL	#ID
	,`fitemId` BIGINT DEFAULT 0	#[字段] 支出流水ID
	,`titemId` BIGINT DEFAULT 0	#[字段] 收入流水ID
	,`fwalletId` BIGINT DEFAULT 0	#[字段] 支出钱包ID
	,`twalletId` BIGINT DEFAULT 0	#[字段] 收入钱包ID
	,`value` BIGINT DEFAULT 0	#[字段] 交易金额(分)
	,`ctime` BIGINT DEFAULT 0	#[字段] 创建时间
	, PRIMARY KEY(id) 
 ) ;
#交易流水
CREATE TABLE IF NOT EXISTS `wallet_3_item` (
	id BIGINT NOT NULL AUTO_INCREMENT	#ID
	,`iid` BIGINT DEFAULT 0	#[字段] 流水号
	,`walletId` BIGINT DEFAULT 0	#[字段] 钱包ID
	,`orderId` BIGINT DEFAULT 0	#[字段] 订单ID
	,`walletValue` BIGINT DEFAULT 0	#[字段] 变更后余额(分)
	,`value` BIGINT DEFAULT 0	#[字段] 增加的余额(分)
	,`ctime` BIGINT DEFAULT 0	#[字段] 创建时间
	, PRIMARY KEY(id) 
	,INDEX `iid` (`iid` asc)	#[索引] 流水号
	,INDEX `walletId` (`walletId` asc)	#[索引] 钱包ID
	,INDEX `orderId` (`orderId` asc)	#[索引] 订单ID
	,INDEX `ctime` (`ctime` desc)	#[索引] 创建时间
 ) AUTO_INCREMENT = 1;
#钱包
CREATE TABLE IF NOT EXISTS `wallet_4_wallet` (
	id BIGINT NOT NULL	#ID
	,`value` BIGINT DEFAULT 0	#[字段] 余额(分)
	,`inValue` BIGINT DEFAULT 0	#[字段] 累计收入(分)
	,`outValue` BIGINT DEFAULT 0	#[字段] 累计支出(分)
	,`iid` BIGINT DEFAULT 0	#[字段] 最后流水号
	,`ctime` BIGINT DEFAULT 0	#[字段] 创建时间
	,`mtime` BIGINT DEFAULT 0	#[字段] 修改时间
	, PRIMARY KEY(id) 
 ) ;
#订单
CREATE TABLE IF NOT EXISTS `wallet_4_order` (
	id BIGINT NOT NULL	#ID
	,`fitemId` BIGINT DEFAULT 0	#[字段] 支出流水ID
	,`titemId` BIGINT DEFAULT 0	#[字段] 收入流水ID
	,`fwalletId` BIGINT DEFAULT 0	#[字段] 支出钱包ID
	,`twalletId` BIGINT DEFAULT 0	#[字段] 收入钱包ID
	,`value` BIGINT DEFAULT 0	#[字段] 交易金额(分)
	,`ctime` BIGINT DEFAULT 0	#[字段] 创建时间
	, PRIMARY KEY(id) 
 ) ;
#交易流水
CREATE TABLE IF NOT EXISTS `wallet_4_item` (
	id BIGINT NOT NULL AUTO_INCREMENT	#ID
	,`iid` BIGINT DEFAULT 0	#[字段] 流水号
	,`walletId` BIGINT DEFAULT 0	#[字段] 钱包ID
	,`orderId` BIGINT DEFAULT 0	#[字段] 订单ID
	,`walletValue` BIGINT DEFAULT 0	#[字段] 变更后余额(分)
	,`value` BIGINT DEFAULT 0	#[字段] 增加的余额(分)
	,`ctime` BIGINT DEFAULT 0	#[字段] 创建时间
	, PRIMARY KEY(id) 
	,INDEX `iid` (`iid` asc)	#[索引] 流水号
	,INDEX `walletId` (`walletId` asc)	#[索引] 钱包ID
	,INDEX `orderId` (`orderId` asc)	#[索引] 订单ID
	,INDEX `ctime` (`ctime` desc)	#[索引] 创建时间
 ) AUTO_INCREMENT = 1;
#钱包
CREATE TABLE IF NOT EXISTS `wallet_5_wallet` (
	id BIGINT NOT NULL	#ID
	,`value` BIGINT DEFAULT 0	#[字段] 余额(分)
	,`inValue` BIGINT DEFAULT 0	#[字段] 累计收入(分)
	,`outValue` BIGINT DEFAULT 0	#[字段] 累计支出(分)
	,`iid` BIGINT DEFAULT 0	#[字段] 最后流水号
	,`ctime` BIGINT DEFAULT 0	#[字段] 创建时间
	,`mtime` BIGINT DEFAULT 0	#[字段] 修改时间
	, PRIMARY KEY(id) 
 ) ;
#订单
CREATE TABLE IF NOT EXISTS `wallet_5_order` (
	id BIGINT NOT NULL	#ID
	,`fitemId` BIGINT DEFAULT 0	#[字段] 支出流水ID
	,`titemId` BIGINT DEFAULT 0	#[字段] 收入流水ID
	,`fwalletId` BIGINT DEFAULT 0	#[字段] 支出钱包ID
	,`twalletId` BIGINT DEFAULT 0	#[字段] 收入钱包ID
	,`value` BIGINT DEFAULT 0	#[字段] 交易金额(分)
	,`ctime` BIGINT DEFAULT 0	#[字段] 创建时间
	, PRIMARY KEY(id) 
 ) ;
#交易流水
CREATE TABLE IF NOT EXISTS `wallet_5_item` (
	id BIGINT NOT NULL AUTO_INCREMENT	#ID
	,`iid` BIGINT DEFAULT 0	#[字段] 流水号
	,`walletId` BIGINT DEFAULT 0	#[字段] 钱包ID
	,`orderId` BIGINT DEFAULT 0	#[字段] 订单ID
	,`walletValue` BIGINT DEFAULT 0	#[字段] 变更后余额(分)
	,`value` BIGINT DEFAULT 0	#[字段] 增加的余额(分)
	,`ctime` BIGINT DEFAULT 0	#[字段] 创建时间
	, PRIMARY KEY(id) 
	,INDEX `iid` (`iid` asc)	#[索引] 流水号
	,INDEX `walletId` (`walletId` asc)	#[索引] 钱包ID
	,INDEX `orderId` (`orderId` asc)	#[索引] 订单ID
	,INDEX `ctime` (`ctime` desc)	#[索引] 创建时间
 ) AUTO_INCREMENT = 1;
#钱包
CREATE TABLE IF NOT EXISTS `wallet_6_wallet` (
	id BIGINT NOT NULL	#ID
	,`value` BIGINT DEFAULT 0	#[字段] 余额(分)
	,`inValue` BIGINT DEFAULT 0	#[字段] 累计收入(分)
	,`outValue` BIGINT DEFAULT 0	#[字段] 累计支出(分)
	,`iid` BIGINT DEFAULT 0	#[字段] 最后流水号
	,`ctime` BIGINT DEFAULT 0	#[字段] 创建时间
	,`mtime` BIGINT DEFAULT 0	#[字段] 修改时间
	, PRIMARY KEY(id) 
 ) ;
#订单
CREATE TABLE IF NOT EXISTS `wallet_6_order` (
	id BIGINT NOT NULL	#ID
	,`fitemId` BIGINT DEFAULT 0	#[字段] 支出流水ID
	,`titemId` BIGINT DEFAULT 0	#[字段] 收入流水ID
	,`fwalletId` BIGINT DEFAULT 0	#[字段] 支出钱包ID
	,`twalletId` BIGINT DEFAULT 0	#[字段] 收入钱包ID
	,`value` BIGINT DEFAULT 0	#[字段] 交易金额(分)
	,`ctime` BIGINT DEFAULT 0	#[字段] 创建时间
	, PRIMARY KEY(id) 
 ) ;
#交易流水
CREATE TABLE IF NOT EXISTS `wallet_6_item` (
	id BIGINT NOT NULL AUTO_INCREMENT	#ID
	,`iid` BIGINT DEFAULT 0	#[字段] 流水号
	,`walletId` BIGINT DEFAULT 0	#[字段] 钱包ID
	,`orderId` BIGINT DEFAULT 0	#[字段] 订单ID
	,`walletValue` BIGINT DEFAULT 0	#[字段] 变更后余额(分)
	,`value` BIGINT DEFAULT 0	#[字段] 增加的余额(分)
	,`ctime` BIGINT DEFAULT 0	#[字段] 创建时间
	, PRIMARY KEY(id) 
	,INDEX `iid` (`iid` asc)	#[索引] 流水号
	,INDEX `walletId` (`walletId` asc)	#[索引] 钱包ID
	,INDEX `orderId` (`orderId` asc)	#[索引] 订单ID
	,INDEX `ctime` (`ctime` desc)	#[索引] 创建时间
 ) AUTO_INCREMENT = 1;
#钱包
CREATE TABLE IF NOT EXISTS `wallet_7_wallet` (
	id BIGINT NOT NULL	#ID
	,`value` BIGINT DEFAULT 0	#[字段] 余额(分)
	,`inValue` BIGINT DEFAULT 0	#[字段] 累计收入(分)
	,`outValue` BIGINT DEFAULT 0	#[字段] 累计支出(分)
	,`iid` BIGINT DEFAULT 0	#[字段] 最后流水号
	,`ctime` BIGINT DEFAULT 0	#[字段] 创建时间
	,`mtime` BIGINT DEFAULT 0	#[字段] 修改时间
	, PRIMARY KEY(id) 
 ) ;
#订单
CREATE TABLE IF NOT EXISTS `wallet_7_order` (
	id BIGINT NOT NULL	#ID
	,`fitemId` BIGINT DEFAULT 0	#[字段] 支出流水ID
	,`titemId` BIGINT DEFAULT 0	#[字段] 收入流水ID
	,`fwalletId` BIGINT DEFAULT 0	#[字段] 支出钱包ID
	,`twalletId` BIGINT DEFAULT 0	#[字段] 收入钱包ID
	,`value` BIGINT DEFAULT 0	#[字段] 交易金额(分)
	,`ctime` BIGINT DEFAULT 0	#[字段] 创建时间
	, PRIMARY KEY(id) 
 ) ;
#交易流水
CREATE TABLE IF NOT EXISTS `wallet_7_item` (
	id BIGINT NOT NULL AUTO_INCREMENT	#ID
	,`iid` BIGINT DEFAULT 0	#[字段] 流水号
	,`walletId` BIGINT DEFAULT 0	#[字段] 钱包ID
	,`orderId` BIGINT DEFAULT 0	#[字段] 订单ID
	,`walletValue` BIGINT DEFAULT 0	#[字段] 变更后余额(分)
	,`value` BIGINT DEFAULT 0	#[字段] 增加的余额(分)
	,`ctime` BIGINT DEFAULT 0	#[字段] 创建时间
	, PRIMARY KEY(id) 
	,INDEX `iid` (`iid` asc)	#[索引] 流水号
	,INDEX `walletId` (`walletId` asc)	#[索引] 钱包ID
	,INDEX `orderId` (`orderId` asc)	#[索引] 订单ID
	,INDEX `ctime` (`ctime` desc)	#[索引] 创建时间
 ) AUTO_INCREMENT = 1;
#钱包
CREATE TABLE IF NOT EXISTS `wallet_8_wallet` (
	id BIGINT NOT NULL	#ID
	,`value` BIGINT DEFAULT 0	#[字段] 余额(分)
	,`inValue` BIGINT DEFAULT 0	#[字段] 累计收入(分)
	,`outValue` BIGINT DEFAULT 0	#[字段] 累计支出(分)
	,`iid` BIGINT DEFAULT 0	#[字段] 最后流水号
	,`ctime` BIGINT DEFAULT 0	#[字段] 创建时间
	,`mtime` BIGINT DEFAULT 0	#[字段] 修改时间
	, PRIMARY KEY(id) 
 ) ;
#订单
CREATE TABLE IF NOT EXISTS `wallet_8_order` (
	id BIGINT NOT NULL	#ID
	,`fitemId` BIGINT DEFAULT 0	#[字段] 支出流水ID
	,`titemId` BIGINT DEFAULT 0	#[字段] 收入流水ID
	,`fwalletId` BIGINT DEFAULT 0	#[字段] 支出钱包ID
	,`twalletId` BIGINT DEFAULT 0	#[字段] 收入钱包ID
	,`value` BIGINT DEFAULT 0	#[字段] 交易金额(分)
	,`ctime` BIGINT DEFAULT 0	#[字段] 创建时间
	, PRIMARY KEY(id) 
 ) ;
#交易流水
CREATE TABLE IF NOT EXISTS `wallet_8_item` (
	id BIGINT NOT NULL AUTO_INCREMENT	#ID
	,`iid` BIGINT DEFAULT 0	#[字段] 流水号
	,`walletId` BIGINT DEFAULT 0	#[字段] 钱包ID
	,`orderId` BIGINT DEFAULT 0	#[字段] 订单ID
	,`walletValue` BIGINT DEFAULT 0	#[字段] 变更后余额(分)
	,`value` BIGINT DEFAULT 0	#[字段] 增加的余额(分)
	,`ctime` BIGINT DEFAULT 0	#[字段] 创建时间
	, PRIMARY KEY(id) 
	,INDEX `iid` (`iid` asc)	#[索引] 流水号
	,INDEX `walletId` (`walletId` asc)	#[索引] 钱包ID
	,INDEX `orderId` (`orderId` asc)	#[索引] 订单ID
	,INDEX `ctime` (`ctime` desc)	#[索引] 创建时间
 ) AUTO_INCREMENT = 1;
#钱包
CREATE TABLE IF NOT EXISTS `wallet_9_wallet` (
	id BIGINT NOT NULL	#ID
	,`value` BIGINT DEFAULT 0	#[字段] 余额(分)
	,`inValue` BIGINT DEFAULT 0	#[字段] 累计收入(分)
	,`outValue` BIGINT DEFAULT 0	#[字段] 累计支出(分)
	,`iid` BIGINT DEFAULT 0	#[字段] 最后流水号
	,`ctime` BIGINT DEFAULT 0	#[字段] 创建时间
	,`mtime` BIGINT DEFAULT 0	#[字段] 修改时间
	, PRIMARY KEY(id) 
 ) ;
#订单
CREATE TABLE IF NOT EXISTS `wallet_9_order` (
	id BIGINT NOT NULL	#ID
	,`fitemId` BIGINT DEFAULT 0	#[字段] 支出流水ID
	,`titemId` BIGINT DEFAULT 0	#[字段] 收入流水ID
	,`fwalletId` BIGINT DEFAULT 0	#[字段] 支出钱包ID
	,`twalletId` BIGINT DEFAULT 0	#[字段] 收入钱包ID
	,`value` BIGINT DEFAULT 0	#[字段] 交易金额(分)
	,`ctime` BIGINT DEFAULT 0	#[字段] 创建时间
	, PRIMARY KEY(id) 
 ) ;
#交易流水
CREATE TABLE IF NOT EXISTS `wallet_9_item` (
	id BIGINT NOT NULL AUTO_INCREMENT	#ID
	,`iid` BIGINT DEFAULT 0	#[字段] 流水号
	,`walletId` BIGINT DEFAULT 0	#[字段] 钱包ID
	,`orderId` BIGINT DEFAULT 0	#[字段] 订单ID
	,`walletValue` BIGINT DEFAULT 0	#[字段] 变更后余额(分)
	,`value` BIGINT DEFAULT 0	#[字段] 增加的余额(分)
	,`ctime` BIGINT DEFAULT 0	#[字段] 创建时间
	, PRIMARY KEY(id) 
	,INDEX `iid` (`iid` asc)	#[索引] 流水号
	,INDEX `walletId` (`walletId` asc)	#[索引] 钱包ID
	,INDEX `orderId` (`orderId` asc)	#[索引] 订单ID
	,INDEX `ctime` (`ctime` desc)	#[索引] 创建时间
 ) AUTO_INCREMENT = 1;
#钱包
CREATE TABLE IF NOT EXISTS `wallet_10_wallet` (
	id BIGINT NOT NULL	#ID
	,`value` BIGINT DEFAULT 0	#[字段] 余额(分)
	,`inValue` BIGINT DEFAULT 0	#[字段] 累计收入(分)
	,`outValue` BIGINT DEFAULT 0	#[字段] 累计支出(分)
	,`iid` BIGINT DEFAULT 0	#[字段] 最后流水号
	,`ctime` BIGINT DEFAULT 0	#[字段] 创建时间
	,`mtime` BIGINT DEFAULT 0	#[字段] 修改时间
	, PRIMARY KEY(id) 
 ) ;
#订单
CREATE TABLE IF NOT EXISTS `wallet_10_order` (
	id BIGINT NOT NULL	#ID
	,`fitemId` BIGINT DEFAULT 0	#[字段] 支出流水ID
	,`titemId` BIGINT DEFAULT 0	#[字段] 收入流水ID
	,`fwalletId` BIGINT DEFAULT 0	#[字段] 支出钱包ID
	,`twalletId` BIGINT DEFAULT 0	#[字段] 收入钱包ID
	,`value` BIGINT DEFAULT 0	#[字段] 交易金额(分)
	,`ctime` BIGINT DEFAULT 0	#[字段] 创建时间
	, PRIMARY KEY(id) 
 ) ;
#交易流水
CREATE TABLE IF NOT EXISTS `wallet_10_item` (
	id BIGINT NOT NULL AUTO_INCREMENT	#ID
	,`iid` BIGINT DEFAULT 0	#[字段] 流水号
	,`walletId` BIGINT DEFAULT 0	#[字段] 钱包ID
	,`orderId` BIGINT DEFAULT 0	#[字段] 订单ID
	,`walletValue` BIGINT DEFAULT 0	#[字段] 变更后余额(分)
	,`value` BIGINT DEFAULT 0	#[字段] 增加的余额(分)
	,`ctime` BIGINT DEFAULT 0	#[字段] 创建时间
	, PRIMARY KEY(id) 
	,INDEX `iid` (`iid` asc)	#[索引] 流水号
	,INDEX `walletId` (`walletId` asc)	#[索引] 钱包ID
	,INDEX `orderId` (`orderId` asc)	#[索引] 订单ID
	,INDEX `ctime` (`ctime` desc)	#[索引] 创建时间
 ) AUTO_INCREMENT = 1;
#钱包
CREATE TABLE IF NOT EXISTS `wallet_11_wallet` (
	id BIGINT NOT NULL	#ID
	,`value` BIGINT DEFAULT 0	#[字段] 余额(分)
	,`inValue` BIGINT DEFAULT 0	#[字段] 累计收入(分)
	,`outValue` BIGINT DEFAULT 0	#[字段] 累计支出(分)
	,`iid` BIGINT DEFAULT 0	#[字段] 最后流水号
	,`ctime` BIGINT DEFAULT 0	#[字段] 创建时间
	,`mtime` BIGINT DEFAULT 0	#[字段] 修改时间
	, PRIMARY KEY(id) 
 ) ;
#订单
CREATE TABLE IF NOT EXISTS `wallet_11_order` (
	id BIGINT NOT NULL	#ID
	,`fitemId` BIGINT DEFAULT 0	#[字段] 支出流水ID
	,`titemId` BIGINT DEFAULT 0	#[字段] 收入流水ID
	,`fwalletId` BIGINT DEFAULT 0	#[字段] 支出钱包ID
	,`twalletId` BIGINT DEFAULT 0	#[字段] 收入钱包ID
	,`value` BIGINT DEFAULT 0	#[字段] 交易金额(分)
	,`ctime` BIGINT DEFAULT 0	#[字段] 创建时间
	, PRIMARY KEY(id) 
 ) ;
#交易流水
CREATE TABLE IF NOT EXISTS `wallet_11_item` (
	id BIGINT NOT NULL AUTO_INCREMENT	#ID
	,`iid` BIGINT DEFAULT 0	#[字段] 流水号
	,`walletId` BIGINT DEFAULT 0	#[字段] 钱包ID
	,`orderId` BIGINT DEFAULT 0	#[字段] 订单ID
	,`walletValue` BIGINT DEFAULT 0	#[字段] 变更后余额(分)
	,`value` BIGINT DEFAULT 0	#[字段] 增加的余额(分)
	,`ctime` BIGINT DEFAULT 0	#[字段] 创建时间
	, PRIMARY KEY(id) 
	,INDEX `iid` (`iid` asc)	#[索引] 流水号
	,INDEX `walletId` (`walletId` asc)	#[索引] 钱包ID
	,INDEX `orderId` (`orderId` asc)	#[索引] 订单ID
	,INDEX `ctime` (`ctime` desc)	#[索引] 创建时间
 ) AUTO_INCREMENT = 1;
#钱包
CREATE TABLE IF NOT EXISTS `wallet_12_wallet` (
	id BIGINT NOT NULL	#ID
	,`value` BIGINT DEFAULT 0	#[字段] 余额(分)
	,`inValue` BIGINT DEFAULT 0	#[字段] 累计收入(分)
	,`outValue` BIGINT DEFAULT 0	#[字段] 累计支出(分)
	,`iid` BIGINT DEFAULT 0	#[字段] 最后流水号
	,`ctime` BIGINT DEFAULT 0	#[字段] 创建时间
	,`mtime` BIGINT DEFAULT 0	#[字段] 修改时间
	, PRIMARY KEY(id) 
 ) ;
#订单
CREATE TABLE IF NOT EXISTS `wallet_12_order` (
	id BIGINT NOT NULL	#ID
	,`fitemId` BIGINT DEFAULT 0	#[字段] 支出流水ID
	,`titemId` BIGINT DEFAULT 0	#[字段] 收入流水ID
	,`fwalletId` BIGINT DEFAULT 0	#[字段] 支出钱包ID
	,`twalletId` BIGINT DEFAULT 0	#[字段] 收入钱包ID
	,`value` BIGINT DEFAULT 0	#[字段] 交易金额(分)
	,`ctime` BIGINT DEFAULT 0	#[字段] 创建时间
	, PRIMARY KEY(id) 
 ) ;
#交易流水
CREATE TABLE IF NOT EXISTS `wallet_12_item` (
	id BIGINT NOT NULL AUTO_INCREMENT	#ID
	,`iid` BIGINT DEFAULT 0	#[字段] 流水号
	,`walletId` BIGINT DEFAULT 0	#[字段] 钱包ID
	,`orderId` BIGINT DEFAULT 0	#[字段] 订单ID
	,`walletValue` BIGINT DEFAULT 0	#[字段] 变更后余额(分)
	,`value` BIGINT DEFAULT 0	#[字段] 增加的余额(分)
	,`ctime` BIGINT DEFAULT 0	#[字段] 创建时间
	, PRIMARY KEY(id) 
	,INDEX `iid` (`iid` asc)	#[索引] 流水号
	,INDEX `walletId` (`walletId` asc)	#[索引] 钱包ID
	,INDEX `orderId` (`orderId` asc)	#[索引] 订单ID
	,INDEX `ctime` (`ctime` desc)	#[索引] 创建时间
 ) AUTO_INCREMENT = 1;
#钱包
CREATE TABLE IF NOT EXISTS `wallet_13_wallet` (
	id BIGINT NOT NULL	#ID
	,`value` BIGINT DEFAULT 0	#[字段] 余额(分)
	,`inValue` BIGINT DEFAULT 0	#[字段] 累计收入(分)
	,`outValue` BIGINT DEFAULT 0	#[字段] 累计支出(分)
	,`iid` BIGINT DEFAULT 0	#[字段] 最后流水号
	,`ctime` BIGINT DEFAULT 0	#[字段] 创建时间
	,`mtime` BIGINT DEFAULT 0	#[字段] 修改时间
	, PRIMARY KEY(id) 
 ) ;
#订单
CREATE TABLE IF NOT EXISTS `wallet_13_order` (
	id BIGINT NOT NULL	#ID
	,`fitemId` BIGINT DEFAULT 0	#[字段] 支出流水ID
	,`titemId` BIGINT DEFAULT 0	#[字段] 收入流水ID
	,`fwalletId` BIGINT DEFAULT 0	#[字段] 支出钱包ID
	,`twalletId` BIGINT DEFAULT 0	#[字段] 收入钱包ID
	,`value` BIGINT DEFAULT 0	#[字段] 交易金额(分)
	,`ctime` BIGINT DEFAULT 0	#[字段] 创建时间
	, PRIMARY KEY(id) 
 ) ;
#交易流水
CREATE TABLE IF NOT EXISTS `wallet_13_item` (
	id BIGINT NOT NULL AUTO_INCREMENT	#ID
	,`iid` BIGINT DEFAULT 0	#[字段] 流水号
	,`walletId` BIGINT DEFAULT 0	#[字段] 钱包ID
	,`orderId` BIGINT DEFAULT 0	#[字段] 订单ID
	,`walletValue` BIGINT DEFAULT 0	#[字段] 变更后余额(分)
	,`value` BIGINT DEFAULT 0	#[字段] 增加的余额(分)
	,`ctime` BIGINT DEFAULT 0	#[字段] 创建时间
	, PRIMARY KEY(id) 
	,INDEX `iid` (`iid` asc)	#[索引] 流水号
	,INDEX `walletId` (`walletId` asc)	#[索引] 钱包ID
	,INDEX `orderId` (`orderId` asc)	#[索引] 订单ID
	,INDEX `ctime` (`ctime` desc)	#[索引] 创建时间
 ) AUTO_INCREMENT = 1;
#钱包
CREATE TABLE IF NOT EXISTS `wallet_14_wallet` (
	id BIGINT NOT NULL	#ID
	,`value` BIGINT DEFAULT 0	#[字段] 余额(分)
	,`inValue` BIGINT DEFAULT 0	#[字段] 累计收入(分)
	,`outValue` BIGINT DEFAULT 0	#[字段] 累计支出(分)
	,`iid` BIGINT DEFAULT 0	#[字段] 最后流水号
	,`ctime` BIGINT DEFAULT 0	#[字段] 创建时间
	,`mtime` BIGINT DEFAULT 0	#[字段] 修改时间
	, PRIMARY KEY(id) 
 ) ;
#订单
CREATE TABLE IF NOT EXISTS `wallet_14_order` (
	id BIGINT NOT NULL	#ID
	,`fitemId` BIGINT DEFAULT 0	#[字段] 支出流水ID
	,`titemId` BIGINT DEFAULT 0	#[字段] 收入流水ID
	,`fwalletId` BIGINT DEFAULT 0	#[字段] 支出钱包ID
	,`twalletId` BIGINT DEFAULT 0	#[字段] 收入钱包ID
	,`value` BIGINT DEFAULT 0	#[字段] 交易金额(分)
	,`ctime` BIGINT DEFAULT 0	#[字段] 创建时间
	, PRIMARY KEY(id) 
 ) ;
#交易流水
CREATE TABLE IF NOT EXISTS `wallet_14_item` (
	id BIGINT NOT NULL AUTO_INCREMENT	#ID
	,`iid` BIGINT DEFAULT 0	#[字段] 流水号
	,`walletId` BIGINT DEFAULT 0	#[字段] 钱包ID
	,`orderId` BIGINT DEFAULT 0	#[字段] 订单ID
	,`walletValue` BIGINT DEFAULT 0	#[字段] 变更后余额(分)
	,`value` BIGINT DEFAULT 0	#[字段] 增加的余额(分)
	,`ctime` BIGINT DEFAULT 0	#[字段] 创建时间
	, PRIMARY KEY(id) 
	,INDEX `iid` (`iid` asc)	#[索引] 流水号
	,INDEX `walletId` (`walletId` asc)	#[索引] 钱包ID
	,INDEX `orderId` (`orderId` asc)	#[索引] 订单ID
	,INDEX `ctime` (`ctime` desc)	#[索引] 创建时间
 ) AUTO_INCREMENT = 1;
#钱包
CREATE TABLE IF NOT EXISTS `wallet_15_wallet` (
	id BIGINT NOT NULL	#ID
	,`value` BIGINT DEFAULT 0	#[字段] 余额(分)
	,`inValue` BIGINT DEFAULT 0	#[字段] 累计收入(分)
	,`outValue` BIGINT DEFAULT 0	#[字段] 累计支出(分)
	,`iid` BIGINT DEFAULT 0	#[字段] 最后流水号
	,`ctime` BIGINT DEFAULT 0	#[字段] 创建时间
	,`mtime` BIGINT DEFAULT 0	#[字段] 修改时间
	, PRIMARY KEY(id) 
 ) ;
#订单
CREATE TABLE IF NOT EXISTS `wallet_15_order` (
	id BIGINT NOT NULL	#ID
	,`fitemId` BIGINT DEFAULT 0	#[字段] 支出流水ID
	,`titemId` BIGINT DEFAULT 0	#[字段] 收入流水ID
	,`fwalletId` BIGINT DEFAULT 0	#[字段] 支出钱包ID
	,`twalletId` BIGINT DEFAULT 0	#[字段] 收入钱包ID
	,`value` BIGINT DEFAULT 0	#[字段] 交易金额(分)
	,`ctime` BIGINT DEFAULT 0	#[字段] 创建时间
	, PRIMARY KEY(id) 
 ) ;
#交易流水
CREATE TABLE IF NOT EXISTS `wallet_15_item` (
	id BIGINT NOT NULL AUTO_INCREMENT	#ID
	,`iid` BIGINT DEFAULT 0	#[字段] 流水号
	,`walletId` BIGINT DEFAULT 0	#[字段] 钱包ID
	,`orderId` BIGINT DEFAULT 0	#[字段] 订单ID
	,`walletValue` BIGINT DEFAULT 0	#[字段] 变更后余额(分)
	,`value` BIGINT DEFAULT 0	#[字段] 增加的余额(分)
	,`ctime` BIGINT DEFAULT 0	#[字段] 创建时间
	, PRIMARY KEY(id) 
	,INDEX `iid` (`iid` asc)	#[索引] 流水号
	,INDEX `walletId` (`walletId` asc)	#[索引] 钱包ID
	,INDEX `orderId` (`orderId` asc)	#[索引] 订单ID
	,INDEX `ctime` (`ctime` desc)	#[索引] 创建时间
 ) AUTO_INCREMENT = 1;
#钱包
CREATE TABLE IF NOT EXISTS `wallet_16_wallet` (
	id BIGINT NOT NULL	#ID
	,`value` BIGINT DEFAULT 0	#[字段] 余额(分)
	,`inValue` BIGINT DEFAULT 0	#[字段] 累计收入(分)
	,`outValue` BIGINT DEFAULT 0	#[字段] 累计支出(分)
	,`iid` BIGINT DEFAULT 0	#[字段] 最后流水号
	,`ctime` BIGINT DEFAULT 0	#[字段] 创建时间
	,`mtime` BIGINT DEFAULT 0	#[字段] 修改时间
	, PRIMARY KEY(id) 
 ) ;
#订单
CREATE TABLE IF NOT EXISTS `wallet_16_order` (
	id BIGINT NOT NULL	#ID
	,`fitemId` BIGINT DEFAULT 0	#[字段] 支出流水ID
	,`titemId` BIGINT DEFAULT 0	#[字段] 收入流水ID
	,`fwalletId` BIGINT DEFAULT 0	#[字段] 支出钱包ID
	,`twalletId` BIGINT DEFAULT 0	#[字段] 收入钱包ID
	,`value` BIGINT DEFAULT 0	#[字段] 交易金额(分)
	,`ctime` BIGINT DEFAULT 0	#[字段] 创建时间
	, PRIMARY KEY(id) 
 ) ;
#交易流水
CREATE TABLE IF NOT EXISTS `wallet_16_item` (
	id BIGINT NOT NULL AUTO_INCREMENT	#ID
	,`iid` BIGINT DEFAULT 0	#[字段] 流水号
	,`walletId` BIGINT DEFAULT 0	#[字段] 钱包ID
	,`orderId` BIGINT DEFAULT 0	#[字段] 订单ID
	,`walletValue` BIGINT DEFAULT 0	#[字段] 变更后余额(分)
	,`value` BIGINT DEFAULT 0	#[字段] 增加的余额(分)
	,`ctime` BIGINT DEFAULT 0	#[字段] 创建时间
	, PRIMARY KEY(id) 
	,INDEX `iid` (`iid` asc)	#[索引] 流水号
	,INDEX `walletId` (`walletId` asc)	#[索引] 钱包ID
	,INDEX `orderId` (`orderId` asc)	#[索引] 订单ID
	,INDEX `ctime` (`ctime` desc)	#[索引] 创建时间
 ) AUTO_INCREMENT = 1;
#钱包
CREATE TABLE IF NOT EXISTS `wallet_17_wallet` (
	id BIGINT NOT NULL	#ID
	,`value` BIGINT DEFAULT 0	#[字段] 余额(分)
	,`inValue` BIGINT DEFAULT 0	#[字段] 累计收入(分)
	,`outValue` BIGINT DEFAULT 0	#[字段] 累计支出(分)
	,`iid` BIGINT DEFAULT 0	#[字段] 最后流水号
	,`ctime` BIGINT DEFAULT 0	#[字段] 创建时间
	,`mtime` BIGINT DEFAULT 0	#[字段] 修改时间
	, PRIMARY KEY(id) 
 ) ;
#订单
CREATE TABLE IF NOT EXISTS `wallet_17_order` (
	id BIGINT NOT NULL	#ID
	,`fitemId` BIGINT DEFAULT 0	#[字段] 支出流水ID
	,`titemId` BIGINT DEFAULT 0	#[字段] 收入流水ID
	,`fwalletId` BIGINT DEFAULT 0	#[字段] 支出钱包ID
	,`twalletId` BIGINT DEFAULT 0	#[字段] 收入钱包ID
	,`value` BIGINT DEFAULT 0	#[字段] 交易金额(分)
	,`ctime` BIGINT DEFAULT 0	#[字段] 创建时间
	, PRIMARY KEY(id) 
 ) ;
#交易流水
CREATE TABLE IF NOT EXISTS `wallet_17_item` (
	id BIGINT NOT NULL AUTO_INCREMENT	#ID
	,`iid` BIGINT DEFAULT 0	#[字段] 流水号
	,`walletId` BIGINT DEFAULT 0	#[字段] 钱包ID
	,`orderId` BIGINT DEFAULT 0	#[字段] 订单ID
	,`walletValue` BIGINT DEFAULT 0	#[字段] 变更后余额(分)
	,`value` BIGINT DEFAULT 0	#[字段] 增加的余额(分)
	,`ctime` BIGINT DEFAULT 0	#[字段] 创建时间
	, PRIMARY KEY(id) 
	,INDEX `iid` (`iid` asc)	#[索引] 流水号
	,INDEX `walletId` (`walletId` asc)	#[索引] 钱包ID
	,INDEX `orderId` (`orderId` asc)	#[索引] 订单ID
	,INDEX `ctime` (`ctime` desc)	#[索引] 创建时间
 ) AUTO_INCREMENT = 1;
#钱包
CREATE TABLE IF NOT EXISTS `wallet_18_wallet` (
	id BIGINT NOT NULL	#ID
	,`value` BIGINT DEFAULT 0	#[字段] 余额(分)
	,`inValue` BIGINT DEFAULT 0	#[字段] 累计收入(分)
	,`outValue` BIGINT DEFAULT 0	#[字段] 累计支出(分)
	,`iid` BIGINT DEFAULT 0	#[字段] 最后流水号
	,`ctime` BIGINT DEFAULT 0	#[字段] 创建时间
	,`mtime` BIGINT DEFAULT 0	#[字段] 修改时间
	, PRIMARY KEY(id) 
 ) ;
#订单
CREATE TABLE IF NOT EXISTS `wallet_18_order` (
	id BIGINT NOT NULL	#ID
	,`fitemId` BIGINT DEFAULT 0	#[字段] 支出流水ID
	,`titemId` BIGINT DEFAULT 0	#[字段] 收入流水ID
	,`fwalletId` BIGINT DEFAULT 0	#[字段] 支出钱包ID
	,`twalletId` BIGINT DEFAULT 0	#[字段] 收入钱包ID
	,`value` BIGINT DEFAULT 0	#[字段] 交易金额(分)
	,`ctime` BIGINT DEFAULT 0	#[字段] 创建时间
	, PRIMARY KEY(id) 
 ) ;
#交易流水
CREATE TABLE IF NOT EXISTS `wallet_18_item` (
	id BIGINT NOT NULL AUTO_INCREMENT	#ID
	,`iid` BIGINT DEFAULT 0	#[字段] 流水号
	,`walletId` BIGINT DEFAULT 0	#[字段] 钱包ID
	,`orderId` BIGINT DEFAULT 0	#[字段] 订单ID
	,`walletValue` BIGINT DEFAULT 0	#[字段] 变更后余额(分)
	,`value` BIGINT DEFAULT 0	#[字段] 增加的余额(分)
	,`ctime` BIGINT DEFAULT 0	#[字段] 创建时间
	, PRIMARY KEY(id) 
	,INDEX `iid` (`iid` asc)	#[索引] 流水号
	,INDEX `walletId` (`walletId` asc)	#[索引] 钱包ID
	,INDEX `orderId` (`orderId` asc)	#[索引] 订单ID
	,INDEX `ctime` (`ctime` desc)	#[索引] 创建时间
 ) AUTO_INCREMENT = 1;
#钱包
CREATE TABLE IF NOT EXISTS `wallet_19_wallet` (
	id BIGINT NOT NULL	#ID
	,`value` BIGINT DEFAULT 0	#[字段] 余额(分)
	,`inValue` BIGINT DEFAULT 0	#[字段] 累计收入(分)
	,`outValue` BIGINT DEFAULT 0	#[字段] 累计支出(分)
	,`iid` BIGINT DEFAULT 0	#[字段] 最后流水号
	,`ctime` BIGINT DEFAULT 0	#[字段] 创建时间
	,`mtime` BIGINT DEFAULT 0	#[字段] 修改时间
	, PRIMARY KEY(id) 
 ) ;
#订单
CREATE TABLE IF NOT EXISTS `wallet_19_order` (
	id BIGINT NOT NULL	#ID
	,`fitemId` BIGINT DEFAULT 0	#[字段] 支出流水ID
	,`titemId` BIGINT DEFAULT 0	#[字段] 收入流水ID
	,`fwalletId` BIGINT DEFAULT 0	#[字段] 支出钱包ID
	,`twalletId` BIGINT DEFAULT 0	#[字段] 收入钱包ID
	,`value` BIGINT DEFAULT 0	#[字段] 交易金额(分)
	,`ctime` BIGINT DEFAULT 0	#[字段] 创建时间
	, PRIMARY KEY(id) 
 ) ;
#交易流水
CREATE TABLE IF NOT EXISTS `wallet_19_item` (
	id BIGINT NOT NULL AUTO_INCREMENT	#ID
	,`iid` BIGINT DEFAULT 0	#[字段] 流水号
	,`walletId` BIGINT DEFAULT 0	#[字段] 钱包ID
	,`orderId` BIGINT DEFAULT 0	#[字段] 订单ID
	,`walletValue` BIGINT DEFAULT 0	#[字段] 变更后余额(分)
	,`value` BIGINT DEFAULT 0	#[字段] 增加的余额(分)
	,`ctime` BIGINT DEFAULT 0	#[字段] 创建时间
	, PRIMARY KEY(id) 
	,INDEX `iid` (`iid` asc)	#[索引] 流水号
	,INDEX `walletId` (`walletId` asc)	#[索引] 钱包ID
	,INDEX `orderId` (`orderId` asc)	#[索引] 订单ID
	,INDEX `ctime` (`ctime` desc)	#[索引] 创建时间
 ) AUTO_INCREMENT = 1;
#钱包
CREATE TABLE IF NOT EXISTS `wallet_20_wallet` (
	id BIGINT NOT NULL	#ID
	,`value` BIGINT DEFAULT 0	#[字段] 余额(分)
	,`inValue` BIGINT DEFAULT 0	#[字段] 累计收入(分)
	,`outValue` BIGINT DEFAULT 0	#[字段] 累计支出(分)
	,`iid` BIGINT DEFAULT 0	#[字段] 最后流水号
	,`ctime` BIGINT DEFAULT 0	#[字段] 创建时间
	,`mtime` BIGINT DEFAULT 0	#[字段] 修改时间
	, PRIMARY KEY(id) 
 ) ;
#订单
CREATE TABLE IF NOT EXISTS `wallet_20_order` (
	id BIGINT NOT NULL	#ID
	,`fitemId` BIGINT DEFAULT 0	#[字段] 支出流水ID
	,`titemId` BIGINT DEFAULT 0	#[字段] 收入流水ID
	,`fwalletId` BIGINT DEFAULT 0	#[字段] 支出钱包ID
	,`twalletId` BIGINT DEFAULT 0	#[字段] 收入钱包ID
	,`value` BIGINT DEFAULT 0	#[字段] 交易金额(分)
	,`ctime` BIGINT DEFAULT 0	#[字段] 创建时间
	, PRIMARY KEY(id) 
 ) ;
#交易流水
CREATE TABLE IF NOT EXISTS `wallet_20_item` (
	id BIGINT NOT NULL AUTO_INCREMENT	#ID
	,`iid` BIGINT DEFAULT 0	#[字段] 流水号
	,`walletId` BIGINT DEFAULT 0	#[字段] 钱包ID
	,`orderId` BIGINT DEFAULT 0	#[字段] 订单ID
	,`walletValue` BIGINT DEFAULT 0	#[字段] 变更后余额(分)
	,`value` BIGINT DEFAULT 0	#[字段] 增加的余额(分)
	,`ctime` BIGINT DEFAULT 0	#[字段] 创建时间
	, PRIMARY KEY(id) 
	,INDEX `iid` (`iid` asc)	#[索引] 流水号
	,INDEX `walletId` (`walletId` asc)	#[索引] 钱包ID
	,INDEX `orderId` (`orderId` asc)	#[索引] 订单ID
	,INDEX `ctime` (`ctime` desc)	#[索引] 创建时间
 ) AUTO_INCREMENT = 1;
#钱包
CREATE TABLE IF NOT EXISTS `wallet_21_wallet` (
	id BIGINT NOT NULL	#ID
	,`value` BIGINT DEFAULT 0	#[字段] 余额(分)
	,`inValue` BIGINT DEFAULT 0	#[字段] 累计收入(分)
	,`outValue` BIGINT DEFAULT 0	#[字段] 累计支出(分)
	,`iid` BIGINT DEFAULT 0	#[字段] 最后流水号
	,`ctime` BIGINT DEFAULT 0	#[字段] 创建时间
	,`mtime` BIGINT DEFAULT 0	#[字段] 修改时间
	, PRIMARY KEY(id) 
 ) ;
#订单
CREATE TABLE IF NOT EXISTS `wallet_21_order` (
	id BIGINT NOT NULL	#ID
	,`fitemId` BIGINT DEFAULT 0	#[字段] 支出流水ID
	,`titemId` BIGINT DEFAULT 0	#[字段] 收入流水ID
	,`fwalletId` BIGINT DEFAULT 0	#[字段] 支出钱包ID
	,`twalletId` BIGINT DEFAULT 0	#[字段] 收入钱包ID
	,`value` BIGINT DEFAULT 0	#[字段] 交易金额(分)
	,`ctime` BIGINT DEFAULT 0	#[字段] 创建时间
	, PRIMARY KEY(id) 
 ) ;
#交易流水
CREATE TABLE IF NOT EXISTS `wallet_21_item` (
	id BIGINT NOT NULL AUTO_INCREMENT	#ID
	,`iid` BIGINT DEFAULT 0	#[字段] 流水号
	,`walletId` BIGINT DEFAULT 0	#[字段] 钱包ID
	,`orderId` BIGINT DEFAULT 0	#[字段] 订单ID
	,`walletValue` BIGINT DEFAULT 0	#[字段] 变更后余额(分)
	,`value` BIGINT DEFAULT 0	#[字段] 增加的余额(分)
	,`ctime` BIGINT DEFAULT 0	#[字段] 创建时间
	, PRIMARY KEY(id) 
	,INDEX `iid` (`iid` asc)	#[索引] 流水号
	,INDEX `walletId` (`walletId` asc)	#[索引] 钱包ID
	,INDEX `orderId` (`orderId` asc)	#[索引] 订单ID
	,INDEX `ctime` (`ctime` desc)	#[索引] 创建时间
 ) AUTO_INCREMENT = 1;
#钱包
CREATE TABLE IF NOT EXISTS `wallet_22_wallet` (
	id BIGINT NOT NULL	#ID
	,`value` BIGINT DEFAULT 0	#[字段] 余额(分)
	,`inValue` BIGINT DEFAULT 0	#[字段] 累计收入(分)
	,`outValue` BIGINT DEFAULT 0	#[字段] 累计支出(分)
	,`iid` BIGINT DEFAULT 0	#[字段] 最后流水号
	,`ctime` BIGINT DEFAULT 0	#[字段] 创建时间
	,`mtime` BIGINT DEFAULT 0	#[字段] 修改时间
	, PRIMARY KEY(id) 
 ) ;
#订单
CREATE TABLE IF NOT EXISTS `wallet_22_order` (
	id BIGINT NOT NULL	#ID
	,`fitemId` BIGINT DEFAULT 0	#[字段] 支出流水ID
	,`titemId` BIGINT DEFAULT 0	#[字段] 收入流水ID
	,`fwalletId` BIGINT DEFAULT 0	#[字段] 支出钱包ID
	,`twalletId` BIGINT DEFAULT 0	#[字段] 收入钱包ID
	,`value` BIGINT DEFAULT 0	#[字段] 交易金额(分)
	,`ctime` BIGINT DEFAULT 0	#[字段] 创建时间
	, PRIMARY KEY(id) 
 ) ;
#交易流水
CREATE TABLE IF NOT EXISTS `wallet_22_item` (
	id BIGINT NOT NULL AUTO_INCREMENT	#ID
	,`iid` BIGINT DEFAULT 0	#[字段] 流水号
	,`walletId` BIGINT DEFAULT 0	#[字段] 钱包ID
	,`orderId` BIGINT DEFAULT 0	#[字段] 订单ID
	,`walletValue` BIGINT DEFAULT 0	#[字段] 变更后余额(分)
	,`value` BIGINT DEFAULT 0	#[字段] 增加的余额(分)
	,`ctime` BIGINT DEFAULT 0	#[字段] 创建时间
	, PRIMARY KEY(id) 
	,INDEX `iid` (`iid` asc)	#[索引] 流水号
	,INDEX `walletId` (`walletId` asc)	#[索引] 钱包ID
	,INDEX `orderId` (`orderId` asc)	#[索引] 订单ID
	,INDEX `ctime` (`ctime` desc)	#[索引] 创建时间
 ) AUTO_INCREMENT = 1;
#钱包
CREATE TABLE IF NOT EXISTS `wallet_23_wallet` (
	id BIGINT NOT NULL	#ID
	,`value` BIGINT DEFAULT 0	#[字段] 余额(分)
	,`inValue` BIGINT DEFAULT 0	#[字段] 累计收入(分)
	,`outValue` BIGINT DEFAULT 0	#[字段] 累计支出(分)
	,`iid` BIGINT DEFAULT 0	#[字段] 最后流水号
	,`ctime` BIGINT DEFAULT 0	#[字段] 创建时间
	,`mtime` BIGINT DEFAULT 0	#[字段] 修改时间
	, PRIMARY KEY(id) 
 ) ;
#订单
CREATE TABLE IF NOT EXISTS `wallet_23_order` (
	id BIGINT NOT NULL	#ID
	,`fitemId` BIGINT DEFAULT 0	#[字段] 支出流水ID
	,`titemId` BIGINT DEFAULT 0	#[字段] 收入流水ID
	,`fwalletId` BIGINT DEFAULT 0	#[字段] 支出钱包ID
	,`twalletId` BIGINT DEFAULT 0	#[字段] 收入钱包ID
	,`value` BIGINT DEFAULT 0	#[字段] 交易金额(分)
	,`ctime` BIGINT DEFAULT 0	#[字段] 创建时间
	, PRIMARY KEY(id) 
 ) ;
#交易流水
CREATE TABLE IF NOT EXISTS `wallet_23_item` (
	id BIGINT NOT NULL AUTO_INCREMENT	#ID
	,`iid` BIGINT DEFAULT 0	#[字段] 流水号
	,`walletId` BIGINT DEFAULT 0	#[字段] 钱包ID
	,`orderId` BIGINT DEFAULT 0	#[字段] 订单ID
	,`walletValue` BIGINT DEFAULT 0	#[字段] 变更后余额(分)
	,`value` BIGINT DEFAULT 0	#[字段] 增加的余额(分)
	,`ctime` BIGINT DEFAULT 0	#[字段] 创建时间
	, PRIMARY KEY(id) 
	,INDEX `iid` (`iid` asc)	#[索引] 流水号
	,INDEX `walletId` (`walletId` asc)	#[索引] 钱包ID
	,INDEX `orderId` (`orderId` asc)	#[索引] 订单ID
	,INDEX `ctime` (`ctime` desc)	#[索引] 创建时间
 ) AUTO_INCREMENT = 1;
#钱包
CREATE TABLE IF NOT EXISTS `wallet_24_wallet` (
	id BIGINT NOT NULL	#ID
	,`value` BIGINT DEFAULT 0	#[字段] 余额(分)
	,`inValue` BIGINT DEFAULT 0	#[字段] 累计收入(分)
	,`outValue` BIGINT DEFAULT 0	#[字段] 累计支出(分)
	,`iid` BIGINT DEFAULT 0	#[字段] 最后流水号
	,`ctime` BIGINT DEFAULT 0	#[字段] 创建时间
	,`mtime` BIGINT DEFAULT 0	#[字段] 修改时间
	, PRIMARY KEY(id) 
 ) ;
#订单
CREATE TABLE IF NOT EXISTS `wallet_24_order` (
	id BIGINT NOT NULL	#ID
	,`fitemId` BIGINT DEFAULT 0	#[字段] 支出流水ID
	,`titemId` BIGINT DEFAULT 0	#[字段] 收入流水ID
	,`fwalletId` BIGINT DEFAULT 0	#[字段] 支出钱包ID
	,`twalletId` BIGINT DEFAULT 0	#[字段] 收入钱包ID
	,`value` BIGINT DEFAULT 0	#[字段] 交易金额(分)
	,`ctime` BIGINT DEFAULT 0	#[字段] 创建时间
	, PRIMARY KEY(id) 
 ) ;
#交易流水
CREATE TABLE IF NOT EXISTS `wallet_24_item` (
	id BIGINT NOT NULL AUTO_INCREMENT	#ID
	,`iid` BIGINT DEFAULT 0	#[字段] 流水号
	,`walletId` BIGINT DEFAULT 0	#[字段] 钱包ID
	,`orderId` BIGINT DEFAULT 0	#[字段] 订单ID
	,`walletValue` BIGINT DEFAULT 0	#[字段] 变更后余额(分)
	,`value` BIGINT DEFAULT 0	#[字段] 增加的余额(分)
	,`ctime` BIGINT DEFAULT 0	#[字段] 创建时间
	, PRIMARY KEY(id) 
	,INDEX `iid` (`iid` asc)	#[索引] 流水号
	,INDEX `walletId` (`walletId` asc)	#[索引] 钱包ID
	,INDEX `orderId` (`orderId` asc)	#[索引] 订单ID
	,INDEX `ctime` (`ctime` desc)	#[索引] 创建时间
 ) AUTO_INCREMENT = 1;
#钱包
CREATE TABLE IF NOT EXISTS `wallet_25_wallet` (
	id BIGINT NOT NULL	#ID
	,`value` BIGINT DEFAULT 0	#[字段] 余额(分)
	,`inValue` BIGINT DEFAULT 0	#[字段] 累计收入(分)
	,`outValue` BIGINT DEFAULT 0	#[字段] 累计支出(分)
	,`iid` BIGINT DEFAULT 0	#[字段] 最后流水号
	,`ctime` BIGINT DEFAULT 0	#[字段] 创建时间
	,`mtime` BIGINT DEFAULT 0	#[字段] 修改时间
	, PRIMARY KEY(id) 
 ) ;
#订单
CREATE TABLE IF NOT EXISTS `wallet_25_order` (
	id BIGINT NOT NULL	#ID
	,`fitemId` BIGINT DEFAULT 0	#[字段] 支出流水ID
	,`titemId` BIGINT DEFAULT 0	#[字段] 收入流水ID
	,`fwalletId` BIGINT DEFAULT 0	#[字段] 支出钱包ID
	,`twalletId` BIGINT DEFAULT 0	#[字段] 收入钱包ID
	,`value` BIGINT DEFAULT 0	#[字段] 交易金额(分)
	,`ctime` BIGINT DEFAULT 0	#[字段] 创建时间
	, PRIMARY KEY(id) 
 ) ;
#交易流水
CREATE TABLE IF NOT EXISTS `wallet_25_item` (
	id BIGINT NOT NULL AUTO_INCREMENT	#ID
	,`iid` BIGINT DEFAULT 0	#[字段] 流水号
	,`walletId` BIGINT DEFAULT 0	#[字段] 钱包ID
	,`orderId` BIGINT DEFAULT 0	#[字段] 订单ID
	,`walletValue` BIGINT DEFAULT 0	#[字段] 变更后余额(分)
	,`value` BIGINT DEFAULT 0	#[字段] 增加的余额(分)
	,`ctime` BIGINT DEFAULT 0	#[字段] 创建时间
	, PRIMARY KEY(id) 
	,INDEX `iid` (`iid` asc)	#[索引] 流水号
	,INDEX `walletId` (`walletId` asc)	#[索引] 钱包ID
	,INDEX `orderId` (`orderId` asc)	#[索引] 订单ID
	,INDEX `ctime` (`ctime` desc)	#[索引] 创建时间
 ) AUTO_INCREMENT = 1;
#钱包
CREATE TABLE IF NOT EXISTS `wallet_26_wallet` (
	id BIGINT NOT NULL	#ID
	,`value` BIGINT DEFAULT 0	#[字段] 余额(分)
	,`inValue` BIGINT DEFAULT 0	#[字段] 累计收入(分)
	,`outValue` BIGINT DEFAULT 0	#[字段] 累计支出(分)
	,`iid` BIGINT DEFAULT 0	#[字段] 最后流水号
	,`ctime` BIGINT DEFAULT 0	#[字段] 创建时间
	,`mtime` BIGINT DEFAULT 0	#[字段] 修改时间
	, PRIMARY KEY(id) 
 ) ;
#订单
CREATE TABLE IF NOT EXISTS `wallet_26_order` (
	id BIGINT NOT NULL	#ID
	,`fitemId` BIGINT DEFAULT 0	#[字段] 支出流水ID
	,`titemId` BIGINT DEFAULT 0	#[字段] 收入流水ID
	,`fwalletId` BIGINT DEFAULT 0	#[字段] 支出钱包ID
	,`twalletId` BIGINT DEFAULT 0	#[字段] 收入钱包ID
	,`value` BIGINT DEFAULT 0	#[字段] 交易金额(分)
	,`ctime` BIGINT DEFAULT 0	#[字段] 创建时间
	, PRIMARY KEY(id) 
 ) ;
#交易流水
CREATE TABLE IF NOT EXISTS `wallet_26_item` (
	id BIGINT NOT NULL AUTO_INCREMENT	#ID
	,`iid` BIGINT DEFAULT 0	#[字段] 流水号
	,`walletId` BIGINT DEFAULT 0	#[字段] 钱包ID
	,`orderId` BIGINT DEFAULT 0	#[字段] 订单ID
	,`walletValue` BIGINT DEFAULT 0	#[字段] 变更后余额(分)
	,`value` BIGINT DEFAULT 0	#[字段] 增加的余额(分)
	,`ctime` BIGINT DEFAULT 0	#[字段] 创建时间
	, PRIMARY KEY(id) 
	,INDEX `iid` (`iid` asc)	#[索引] 流水号
	,INDEX `walletId` (`walletId` asc)	#[索引] 钱包ID
	,INDEX `orderId` (`orderId` asc)	#[索引] 订单ID
	,INDEX `ctime` (`ctime` desc)	#[索引] 创建时间
 ) AUTO_INCREMENT = 1;
#钱包
CREATE TABLE IF NOT EXISTS `wallet_27_wallet` (
	id BIGINT NOT NULL	#ID
	,`value` BIGINT DEFAULT 0	#[字段] 余额(分)
	,`inValue` BIGINT DEFAULT 0	#[字段] 累计收入(分)
	,`outValue` BIGINT DEFAULT 0	#[字段] 累计支出(分)
	,`iid` BIGINT DEFAULT 0	#[字段] 最后流水号
	,`ctime` BIGINT DEFAULT 0	#[字段] 创建时间
	,`mtime` BIGINT DEFAULT 0	#[字段] 修改时间
	, PRIMARY KEY(id) 
 ) ;
#订单
CREATE TABLE IF NOT EXISTS `wallet_27_order` (
	id BIGINT NOT NULL	#ID
	,`fitemId` BIGINT DEFAULT 0	#[字段] 支出流水ID
	,`titemId` BIGINT DEFAULT 0	#[字段] 收入流水ID
	,`fwalletId` BIGINT DEFAULT 0	#[字段] 支出钱包ID
	,`twalletId` BIGINT DEFAULT 0	#[字段] 收入钱包ID
	,`value` BIGINT DEFAULT 0	#[字段] 交易金额(分)
	,`ctime` BIGINT DEFAULT 0	#[字段] 创建时间
	, PRIMARY KEY(id) 
 ) ;
#交易流水
CREATE TABLE IF NOT EXISTS `wallet_27_item` (
	id BIGINT NOT NULL AUTO_INCREMENT	#ID
	,`iid` BIGINT DEFAULT 0	#[字段] 流水号
	,`walletId` BIGINT DEFAULT 0	#[字段] 钱包ID
	,`orderId` BIGINT DEFAULT 0	#[字段] 订单ID
	,`walletValue` BIGINT DEFAULT 0	#[字段] 变更后余额(分)
	,`value` BIGINT DEFAULT 0	#[字段] 增加的余额(分)
	,`ctime` BIGINT DEFAULT 0	#[字段] 创建时间
	, PRIMARY KEY(id) 
	,INDEX `iid` (`iid` asc)	#[索引] 流水号
	,INDEX `walletId` (`walletId` asc)	#[索引] 钱包ID
	,INDEX `orderId` (`orderId` asc)	#[索引] 订单ID
	,INDEX `ctime` (`ctime` desc)	#[索引] 创建时间
 ) AUTO_INCREMENT = 1;
#钱包
CREATE TABLE IF NOT EXISTS `wallet_28_wallet` (
	id BIGINT NOT NULL	#ID
	,`value` BIGINT DEFAULT 0	#[字段] 余额(分)
	,`inValue` BIGINT DEFAULT 0	#[字段] 累计收入(分)
	,`outValue` BIGINT DEFAULT 0	#[字段] 累计支出(分)
	,`iid` BIGINT DEFAULT 0	#[字段] 最后流水号
	,`ctime` BIGINT DEFAULT 0	#[字段] 创建时间
	,`mtime` BIGINT DEFAULT 0	#[字段] 修改时间
	, PRIMARY KEY(id) 
 ) ;
#订单
CREATE TABLE IF NOT EXISTS `wallet_28_order` (
	id BIGINT NOT NULL	#ID
	,`fitemId` BIGINT DEFAULT 0	#[字段] 支出流水ID
	,`titemId` BIGINT DEFAULT 0	#[字段] 收入流水ID
	,`fwalletId` BIGINT DEFAULT 0	#[字段] 支出钱包ID
	,`twalletId` BIGINT DEFAULT 0	#[字段] 收入钱包ID
	,`value` BIGINT DEFAULT 0	#[字段] 交易金额(分)
	,`ctime` BIGINT DEFAULT 0	#[字段] 创建时间
	, PRIMARY KEY(id) 
 ) ;
#交易流水
CREATE TABLE IF NOT EXISTS `wallet_28_item` (
	id BIGINT NOT NULL AUTO_INCREMENT	#ID
	,`iid` BIGINT DEFAULT 0	#[字段] 流水号
	,`walletId` BIGINT DEFAULT 0	#[字段] 钱包ID
	,`orderId` BIGINT DEFAULT 0	#[字段] 订单ID
	,`walletValue` BIGINT DEFAULT 0	#[字段] 变更后余额(分)
	,`value` BIGINT DEFAULT 0	#[字段] 增加的余额(分)
	,`ctime` BIGINT DEFAULT 0	#[字段] 创建时间
	, PRIMARY KEY(id) 
	,INDEX `iid` (`iid` asc)	#[索引] 流水号
	,INDEX `walletId` (`walletId` asc)	#[索引] 钱包ID
	,INDEX `orderId` (`orderId` asc)	#[索引] 订单ID
	,INDEX `ctime` (`ctime` desc)	#[索引] 创建时间
 ) AUTO_INCREMENT = 1;
#钱包
CREATE TABLE IF NOT EXISTS `wallet_29_wallet` (
	id BIGINT NOT NULL	#ID
	,`value` BIGINT DEFAULT 0	#[字段] 余额(分)
	,`inValue` BIGINT DEFAULT 0	#[字段] 累计收入(分)
	,`outValue` BIGINT DEFAULT 0	#[字段] 累计支出(分)
	,`iid` BIGINT DEFAULT 0	#[字段] 最后流水号
	,`ctime` BIGINT DEFAULT 0	#[字段] 创建时间
	,`mtime` BIGINT DEFAULT 0	#[字段] 修改时间
	, PRIMARY KEY(id) 
 ) ;
#订单
CREATE TABLE IF NOT EXISTS `wallet_29_order` (
	id BIGINT NOT NULL	#ID
	,`fitemId` BIGINT DEFAULT 0	#[字段] 支出流水ID
	,`titemId` BIGINT DEFAULT 0	#[字段] 收入流水ID
	,`fwalletId` BIGINT DEFAULT 0	#[字段] 支出钱包ID
	,`twalletId` BIGINT DEFAULT 0	#[字段] 收入钱包ID
	,`value` BIGINT DEFAULT 0	#[字段] 交易金额(分)
	,`ctime` BIGINT DEFAULT 0	#[字段] 创建时间
	, PRIMARY KEY(id) 
 ) ;
#交易流水
CREATE TABLE IF NOT EXISTS `wallet_29_item` (
	id BIGINT NOT NULL AUTO_INCREMENT	#ID
	,`iid` BIGINT DEFAULT 0	#[字段] 流水号
	,`walletId` BIGINT DEFAULT 0	#[字段] 钱包ID
	,`orderId` BIGINT DEFAULT 0	#[字段] 订单ID
	,`walletValue` BIGINT DEFAULT 0	#[字段] 变更后余额(分)
	,`value` BIGINT DEFAULT 0	#[字段] 增加的余额(分)
	,`ctime` BIGINT DEFAULT 0	#[字段] 创建时间
	, PRIMARY KEY(id) 
	,INDEX `iid` (`iid` asc)	#[索引] 流水号
	,INDEX `walletId` (`walletId` asc)	#[索引] 钱包ID
	,INDEX `orderId` (`orderId` asc)	#[索引] 订单ID
	,INDEX `ctime` (`ctime` desc)	#[索引] 创建时间
 ) AUTO_INCREMENT = 1;
#钱包
CREATE TABLE IF NOT EXISTS `wallet_30_wallet` (
	id BIGINT NOT NULL	#ID
	,`value` BIGINT DEFAULT 0	#[字段] 余额(分)
	,`inValue` BIGINT DEFAULT 0	#[字段] 累计收入(分)
	,`outValue` BIGINT DEFAULT 0	#[字段] 累计支出(分)
	,`iid` BIGINT DEFAULT 0	#[字段] 最后流水号
	,`ctime` BIGINT DEFAULT 0	#[字段] 创建时间
	,`mtime` BIGINT DEFAULT 0	#[字段] 修改时间
	, PRIMARY KEY(id) 
 ) ;
#订单
CREATE TABLE IF NOT EXISTS `wallet_30_order` (
	id BIGINT NOT NULL	#ID
	,`fitemId` BIGINT DEFAULT 0	#[字段] 支出流水ID
	,`titemId` BIGINT DEFAULT 0	#[字段] 收入流水ID
	,`fwalletId` BIGINT DEFAULT 0	#[字段] 支出钱包ID
	,`twalletId` BIGINT DEFAULT 0	#[字段] 收入钱包ID
	,`value` BIGINT DEFAULT 0	#[字段] 交易金额(分)
	,`ctime` BIGINT DEFAULT 0	#[字段] 创建时间
	, PRIMARY KEY(id) 
 ) ;
#交易流水
CREATE TABLE IF NOT EXISTS `wallet_30_item` (
	id BIGINT NOT NULL AUTO_INCREMENT	#ID
	,`iid` BIGINT DEFAULT 0	#[字段] 流水号
	,`walletId` BIGINT DEFAULT 0	#[字段] 钱包ID
	,`orderId` BIGINT DEFAULT 0	#[字段] 订单ID
	,`walletValue` BIGINT DEFAULT 0	#[字段] 变更后余额(分)
	,`value` BIGINT DEFAULT 0	#[字段] 增加的余额(分)
	,`ctime` BIGINT DEFAULT 0	#[字段] 创建时间
	, PRIMARY KEY(id) 
	,INDEX `iid` (`iid` asc)	#[索引] 流水号
	,INDEX `walletId` (`walletId` asc)	#[索引] 钱包ID
	,INDEX `orderId` (`orderId` asc)	#[索引] 订单ID
	,INDEX `ctime` (`ctime` desc)	#[索引] 创建时间
 ) AUTO_INCREMENT = 1;
#钱包
CREATE TABLE IF NOT EXISTS `wallet_31_wallet` (
	id BIGINT NOT NULL	#ID
	,`value` BIGINT DEFAULT 0	#[字段] 余额(分)
	,`inValue` BIGINT DEFAULT 0	#[字段] 累计收入(分)
	,`outValue` BIGINT DEFAULT 0	#[字段] 累计支出(分)
	,`iid` BIGINT DEFAULT 0	#[字段] 最后流水号
	,`ctime` BIGINT DEFAULT 0	#[字段] 创建时间
	,`mtime` BIGINT DEFAULT 0	#[字段] 修改时间
	, PRIMARY KEY(id) 
 ) ;
#订单
CREATE TABLE IF NOT EXISTS `wallet_31_order` (
	id BIGINT NOT NULL	#ID
	,`fitemId` BIGINT DEFAULT 0	#[字段] 支出流水ID
	,`titemId` BIGINT DEFAULT 0	#[字段] 收入流水ID
	,`fwalletId` BIGINT DEFAULT 0	#[字段] 支出钱包ID
	,`twalletId` BIGINT DEFAULT 0	#[字段] 收入钱包ID
	,`value` BIGINT DEFAULT 0	#[字段] 交易金额(分)
	,`ctime` BIGINT DEFAULT 0	#[字段] 创建时间
	, PRIMARY KEY(id) 
 ) ;
#交易流水
CREATE TABLE IF NOT EXISTS `wallet_31_item` (
	id BIGINT NOT NULL AUTO_INCREMENT	#ID
	,`iid` BIGINT DEFAULT 0	#[字段] 流水号
	,`walletId` BIGINT DEFAULT 0	#[字段] 钱包ID
	,`orderId` BIGINT DEFAULT 0	#[字段] 订单ID
	,`walletValue` BIGINT DEFAULT 0	#[字段] 变更后余额(分)
	,`value` BIGINT DEFAULT 0	#[字段] 增加的余额(分)
	,`ctime` BIGINT DEFAULT 0	#[字段] 创建时间
	, PRIMARY KEY(id) 
	,INDEX `iid` (`iid` asc)	#[索引] 流水号
	,INDEX `walletId` (`walletId` asc)	#[索引] 钱包ID
	,INDEX `orderId` (`orderId` asc)	#[索引] 订单ID
	,INDEX `ctime` (`ctime` desc)	#[索引] 创建时间
 ) AUTO_INCREMENT = 1;
#钱包
CREATE TABLE IF NOT EXISTS `wallet_32_wallet` (
	id BIGINT NOT NULL	#ID
	,`value` BIGINT DEFAULT 0	#[字段] 余额(分)
	,`inValue` BIGINT DEFAULT 0	#[字段] 累计收入(分)
	,`outValue` BIGINT DEFAULT 0	#[字段] 累计支出(分)
	,`iid` BIGINT DEFAULT 0	#[字段] 最后流水号
	,`ctime` BIGINT DEFAULT 0	#[字段] 创建时间
	,`mtime` BIGINT DEFAULT 0	#[字段] 修改时间
	, PRIMARY KEY(id) 
 ) ;
#订单
CREATE TABLE IF NOT EXISTS `wallet_32_order` (
	id BIGINT NOT NULL	#ID
	,`fitemId` BIGINT DEFAULT 0	#[字段] 支出流水ID
	,`titemId` BIGINT DEFAULT 0	#[字段] 收入流水ID
	,`fwalletId` BIGINT DEFAULT 0	#[字段] 支出钱包ID
	,`twalletId` BIGINT DEFAULT 0	#[字段] 收入钱包ID
	,`value` BIGINT DEFAULT 0	#[字段] 交易金额(分)
	,`ctime` BIGINT DEFAULT 0	#[字段] 创建时间
	, PRIMARY KEY(id) 
 ) ;
#交易流水
CREATE TABLE IF NOT EXISTS `wallet_32_item` (
	id BIGINT NOT NULL AUTO_INCREMENT	#ID
	,`iid` BIGINT DEFAULT 0	#[字段] 流水号
	,`walletId` BIGINT DEFAULT 0	#[字段] 钱包ID
	,`orderId` BIGINT DEFAULT 0	#[字段] 订单ID
	,`walletValue` BIGINT DEFAULT 0	#[字段] 变更后余额(分)
	,`value` BIGINT DEFAULT 0	#[字段] 增加的余额(分)
	,`ctime` BIGINT DEFAULT 0	#[字段] 创建时间
	, PRIMARY KEY(id) 
	,INDEX `iid` (`iid` asc)	#[索引] 流水号
	,INDEX `walletId` (`walletId` asc)	#[索引] 钱包ID
	,INDEX `orderId` (`orderId` asc)	#[索引] 订单ID
	,INDEX `ctime` (`ctime` desc)	#[索引] 创建时间
 ) AUTO_INCREMENT = 1;
#钱包
CREATE TABLE IF NOT EXISTS `wallet_33_wallet` (
	id BIGINT NOT NULL	#ID
	,`value` BIGINT DEFAULT 0	#[字段] 余额(分)
	,`inValue` BIGINT DEFAULT 0	#[字段] 累计收入(分)
	,`outValue` BIGINT DEFAULT 0	#[字段] 累计支出(分)
	,`iid` BIGINT DEFAULT 0	#[字段] 最后流水号
	,`ctime` BIGINT DEFAULT 0	#[字段] 创建时间
	,`mtime` BIGINT DEFAULT 0	#[字段] 修改时间
	, PRIMARY KEY(id) 
 ) ;
#订单
CREATE TABLE IF NOT EXISTS `wallet_33_order` (
	id BIGINT NOT NULL	#ID
	,`fitemId` BIGINT DEFAULT 0	#[字段] 支出流水ID
	,`titemId` BIGINT DEFAULT 0	#[字段] 收入流水ID
	,`fwalletId` BIGINT DEFAULT 0	#[字段] 支出钱包ID
	,`twalletId` BIGINT DEFAULT 0	#[字段] 收入钱包ID
	,`value` BIGINT DEFAULT 0	#[字段] 交易金额(分)
	,`ctime` BIGINT DEFAULT 0	#[字段] 创建时间
	, PRIMARY KEY(id) 
 ) ;
#交易流水
CREATE TABLE IF NOT EXISTS `wallet_33_item` (
	id BIGINT NOT NULL AUTO_INCREMENT	#ID
	,`iid` BIGINT DEFAULT 0	#[字段] 流水号
	,`walletId` BIGINT DEFAULT 0	#[字段] 钱包ID
	,`orderId` BIGINT DEFAULT 0	#[字段] 订单ID
	,`walletValue` BIGINT DEFAULT 0	#[字段] 变更后余额(分)
	,`value` BIGINT DEFAULT 0	#[字段] 增加的余额(分)
	,`ctime` BIGINT DEFAULT 0	#[字段] 创建时间
	, PRIMARY KEY(id) 
	,INDEX `iid` (`iid` asc)	#[索引] 流水号
	,INDEX `walletId` (`walletId` asc)	#[索引] 钱包ID
	,INDEX `orderId` (`orderId` asc)	#[索引] 订单ID
	,INDEX `ctime` (`ctime` desc)	#[索引] 创建时间
 ) AUTO_INCREMENT = 1;
#钱包
CREATE TABLE IF NOT EXISTS `wallet_34_wallet` (
	id BIGINT NOT NULL	#ID
	,`value` BIGINT DEFAULT 0	#[字段] 余额(分)
	,`inValue` BIGINT DEFAULT 0	#[字段] 累计收入(分)
	,`outValue` BIGINT DEFAULT 0	#[字段] 累计支出(分)
	,`iid` BIGINT DEFAULT 0	#[字段] 最后流水号
	,`ctime` BIGINT DEFAULT 0	#[字段] 创建时间
	,`mtime` BIGINT DEFAULT 0	#[字段] 修改时间
	, PRIMARY KEY(id) 
 ) ;
#订单
CREATE TABLE IF NOT EXISTS `wallet_34_order` (
	id BIGINT NOT NULL	#ID
	,`fitemId` BIGINT DEFAULT 0	#[字段] 支出流水ID
	,`titemId` BIGINT DEFAULT 0	#[字段] 收入流水ID
	,`fwalletId` BIGINT DEFAULT 0	#[字段] 支出钱包ID
	,`twalletId` BIGINT DEFAULT 0	#[字段] 收入钱包ID
	,`value` BIGINT DEFAULT 0	#[字段] 交易金额(分)
	,`ctime` BIGINT DEFAULT 0	#[字段] 创建时间
	, PRIMARY KEY(id) 
 ) ;
#交易流水
CREATE TABLE IF NOT EXISTS `wallet_34_item` (
	id BIGINT NOT NULL AUTO_INCREMENT	#ID
	,`iid` BIGINT DEFAULT 0	#[字段] 流水号
	,`walletId` BIGINT DEFAULT 0	#[字段] 钱包ID
	,`orderId` BIGINT DEFAULT 0	#[字段] 订单ID
	,`walletValue` BIGINT DEFAULT 0	#[字段] 变更后余额(分)
	,`value` BIGINT DEFAULT 0	#[字段] 增加的余额(分)
	,`ctime` BIGINT DEFAULT 0	#[字段] 创建时间
	, PRIMARY KEY(id) 
	,INDEX `iid` (`iid` asc)	#[索引] 流水号
	,INDEX `walletId` (`walletId` asc)	#[索引] 钱包ID
	,INDEX `orderId` (`orderId` asc)	#[索引] 订单ID
	,INDEX `ctime` (`ctime` desc)	#[索引] 创建时间
 ) AUTO_INCREMENT = 1;
#钱包
CREATE TABLE IF NOT EXISTS `wallet_35_wallet` (
	id BIGINT NOT NULL	#ID
	,`value` BIGINT DEFAULT 0	#[字段] 余额(分)
	,`inValue` BIGINT DEFAULT 0	#[字段] 累计收入(分)
	,`outValue` BIGINT DEFAULT 0	#[字段] 累计支出(分)
	,`iid` BIGINT DEFAULT 0	#[字段] 最后流水号
	,`ctime` BIGINT DEFAULT 0	#[字段] 创建时间
	,`mtime` BIGINT DEFAULT 0	#[字段] 修改时间
	, PRIMARY KEY(id) 
 ) ;
#订单
CREATE TABLE IF NOT EXISTS `wallet_35_order` (
	id BIGINT NOT NULL	#ID
	,`fitemId` BIGINT DEFAULT 0	#[字段] 支出流水ID
	,`titemId` BIGINT DEFAULT 0	#[字段] 收入流水ID
	,`fwalletId` BIGINT DEFAULT 0	#[字段] 支出钱包ID
	,`twalletId` BIGINT DEFAULT 0	#[字段] 收入钱包ID
	,`value` BIGINT DEFAULT 0	#[字段] 交易金额(分)
	,`ctime` BIGINT DEFAULT 0	#[字段] 创建时间
	, PRIMARY KEY(id) 
 ) ;
#交易流水
CREATE TABLE IF NOT EXISTS `wallet_35_item` (
	id BIGINT NOT NULL AUTO_INCREMENT	#ID
	,`iid` BIGINT DEFAULT 0	#[字段] 流水号
	,`walletId` BIGINT DEFAULT 0	#[字段] 钱包ID
	,`orderId` BIGINT DEFAULT 0	#[字段] 订单ID
	,`walletValue` BIGINT DEFAULT 0	#[字段] 变更后余额(分)
	,`value` BIGINT DEFAULT 0	#[字段] 增加的余额(分)
	,`ctime` BIGINT DEFAULT 0	#[字段] 创建时间
	, PRIMARY KEY(id) 
	,INDEX `iid` (`iid` asc)	#[索引] 流水号
	,INDEX `walletId` (`walletId` asc)	#[索引] 钱包ID
	,INDEX `orderId` (`orderId` asc)	#[索引] 订单ID
	,INDEX `ctime` (`ctime` desc)	#[索引] 创建时间
 ) AUTO_INCREMENT = 1;
#钱包
CREATE TABLE IF NOT EXISTS `wallet_36_wallet` (
	id BIGINT NOT NULL	#ID
	,`value` BIGINT DEFAULT 0	#[字段] 余额(分)
	,`inValue` BIGINT DEFAULT 0	#[字段] 累计收入(分)
	,`outValue` BIGINT DEFAULT 0	#[字段] 累计支出(分)
	,`iid` BIGINT DEFAULT 0	#[字段] 最后流水号
	,`ctime` BIGINT DEFAULT 0	#[字段] 创建时间
	,`mtime` BIGINT DEFAULT 0	#[字段] 修改时间
	, PRIMARY KEY(id) 
 ) ;
#订单
CREATE TABLE IF NOT EXISTS `wallet_36_order` (
	id BIGINT NOT NULL	#ID
	,`fitemId` BIGINT DEFAULT 0	#[字段] 支出流水ID
	,`titemId` BIGINT DEFAULT 0	#[字段] 收入流水ID
	,`fwalletId` BIGINT DEFAULT 0	#[字段] 支出钱包ID
	,`twalletId` BIGINT DEFAULT 0	#[字段] 收入钱包ID
	,`value` BIGINT DEFAULT 0	#[字段] 交易金额(分)
	,`ctime` BIGINT DEFAULT 0	#[字段] 创建时间
	, PRIMARY KEY(id) 
 ) ;
#交易流水
CREATE TABLE IF NOT EXISTS `wallet_36_item` (
	id BIGINT NOT NULL AUTO_INCREMENT	#ID
	,`iid` BIGINT DEFAULT 0	#[字段] 流水号
	,`walletId` BIGINT DEFAULT 0	#[字段] 钱包ID
	,`orderId` BIGINT DEFAULT 0	#[字段] 订单ID
	,`walletValue` BIGINT DEFAULT 0	#[字段] 变更后余额(分)
	,`value` BIGINT DEFAULT 0	#[字段] 增加的余额(分)
	,`ctime` BIGINT DEFAULT 0	#[字段] 创建时间
	, PRIMARY KEY(id) 
	,INDEX `iid` (`iid` asc)	#[索引] 流水号
	,INDEX `walletId` (`walletId` asc)	#[索引] 钱包ID
	,INDEX `orderId` (`orderId` asc)	#[索引] 订单ID
	,INDEX `ctime` (`ctime` desc)	#[索引] 创建时间
 ) AUTO_INCREMENT = 1;
#钱包
CREATE TABLE IF NOT EXISTS `wallet_37_wallet` (
	id BIGINT NOT NULL	#ID
	,`value` BIGINT DEFAULT 0	#[字段] 余额(分)
	,`inValue` BIGINT DEFAULT 0	#[字段] 累计收入(分)
	,`outValue` BIGINT DEFAULT 0	#[字段] 累计支出(分)
	,`iid` BIGINT DEFAULT 0	#[字段] 最后流水号
	,`ctime` BIGINT DEFAULT 0	#[字段] 创建时间
	,`mtime` BIGINT DEFAULT 0	#[字段] 修改时间
	, PRIMARY KEY(id) 
 ) ;
#订单
CREATE TABLE IF NOT EXISTS `wallet_37_order` (
	id BIGINT NOT NULL	#ID
	,`fitemId` BIGINT DEFAULT 0	#[字段] 支出流水ID
	,`titemId` BIGINT DEFAULT 0	#[字段] 收入流水ID
	,`fwalletId` BIGINT DEFAULT 0	#[字段] 支出钱包ID
	,`twalletId` BIGINT DEFAULT 0	#[字段] 收入钱包ID
	,`value` BIGINT DEFAULT 0	#[字段] 交易金额(分)
	,`ctime` BIGINT DEFAULT 0	#[字段] 创建时间
	, PRIMARY KEY(id) 
 ) ;
#交易流水
CREATE TABLE IF NOT EXISTS `wallet_37_item` (
	id BIGINT NOT NULL AUTO_INCREMENT	#ID
	,`iid` BIGINT DEFAULT 0	#[字段] 流水号
	,`walletId` BIGINT DEFAULT 0	#[字段] 钱包ID
	,`orderId` BIGINT DEFAULT 0	#[字段] 订单ID
	,`walletValue` BIGINT DEFAULT 0	#[字段] 变更后余额(分)
	,`value` BIGINT DEFAULT 0	#[字段] 增加的余额(分)
	,`ctime` BIGINT DEFAULT 0	#[字段] 创建时间
	, PRIMARY KEY(id) 
	,INDEX `iid` (`iid` asc)	#[索引] 流水号
	,INDEX `walletId` (`walletId` asc)	#[索引] 钱包ID
	,INDEX `orderId` (`orderId` asc)	#[索引] 订单ID
	,INDEX `ctime` (`ctime` desc)	#[索引] 创建时间
 ) AUTO_INCREMENT = 1;
#钱包
CREATE TABLE IF NOT EXISTS `wallet_38_wallet` (
	id BIGINT NOT NULL	#ID
	,`value` BIGINT DEFAULT 0	#[字段] 余额(分)
	,`inValue` BIGINT DEFAULT 0	#[字段] 累计收入(分)
	,`outValue` BIGINT DEFAULT 0	#[字段] 累计支出(分)
	,`iid` BIGINT DEFAULT 0	#[字段] 最后流水号
	,`ctime` BIGINT DEFAULT 0	#[字段] 创建时间
	,`mtime` BIGINT DEFAULT 0	#[字段] 修改时间
	, PRIMARY KEY(id) 
 ) ;
#订单
CREATE TABLE IF NOT EXISTS `wallet_38_order` (
	id BIGINT NOT NULL	#ID
	,`fitemId` BIGINT DEFAULT 0	#[字段] 支出流水ID
	,`titemId` BIGINT DEFAULT 0	#[字段] 收入流水ID
	,`fwalletId` BIGINT DEFAULT 0	#[字段] 支出钱包ID
	,`twalletId` BIGINT DEFAULT 0	#[字段] 收入钱包ID
	,`value` BIGINT DEFAULT 0	#[字段] 交易金额(分)
	,`ctime` BIGINT DEFAULT 0	#[字段] 创建时间
	, PRIMARY KEY(id) 
 ) ;
#交易流水
CREATE TABLE IF NOT EXISTS `wallet_38_item` (
	id BIGINT NOT NULL AUTO_INCREMENT	#ID
	,`iid` BIGINT DEFAULT 0	#[字段] 流水号
	,`walletId` BIGINT DEFAULT 0	#[字段] 钱包ID
	,`orderId` BIGINT DEFAULT 0	#[字段] 订单ID
	,`walletValue` BIGINT DEFAULT 0	#[字段] 变更后余额(分)
	,`value` BIGINT DEFAULT 0	#[字段] 增加的余额(分)
	,`ctime` BIGINT DEFAULT 0	#[字段] 创建时间
	, PRIMARY KEY(id) 
	,INDEX `iid` (`iid` asc)	#[索引] 流水号
	,INDEX `walletId` (`walletId` asc)	#[索引] 钱包ID
	,INDEX `orderId` (`orderId` asc)	#[索引] 订单ID
	,INDEX `ctime` (`ctime` desc)	#[索引] 创建时间
 ) AUTO_INCREMENT = 1;
#钱包
CREATE TABLE IF NOT EXISTS `wallet_39_wallet` (
	id BIGINT NOT NULL	#ID
	,`value` BIGINT DEFAULT 0	#[字段] 余额(分)
	,`inValue` BIGINT DEFAULT 0	#[字段] 累计收入(分)
	,`outValue` BIGINT DEFAULT 0	#[字段] 累计支出(分)
	,`iid` BIGINT DEFAULT 0	#[字段] 最后流水号
	,`ctime` BIGINT DEFAULT 0	#[字段] 创建时间
	,`mtime` BIGINT DEFAULT 0	#[字段] 修改时间
	, PRIMARY KEY(id) 
 ) ;
#订单
CREATE TABLE IF NOT EXISTS `wallet_39_order` (
	id BIGINT NOT NULL	#ID
	,`fitemId` BIGINT DEFAULT 0	#[字段] 支出流水ID
	,`titemId` BIGINT DEFAULT 0	#[字段] 收入流水ID
	,`fwalletId` BIGINT DEFAULT 0	#[字段] 支出钱包ID
	,`twalletId` BIGINT DEFAULT 0	#[字段] 收入钱包ID
	,`value` BIGINT DEFAULT 0	#[字段] 交易金额(分)
	,`ctime` BIGINT DEFAULT 0	#[字段] 创建时间
	, PRIMARY KEY(id) 
 ) ;
#交易流水
CREATE TABLE IF NOT EXISTS `wallet_39_item` (
	id BIGINT NOT NULL AUTO_INCREMENT	#ID
	,`iid` BIGINT DEFAULT 0	#[字段] 流水号
	,`walletId` BIGINT DEFAULT 0	#[字段] 钱包ID
	,`orderId` BIGINT DEFAULT 0	#[字段] 订单ID
	,`walletValue` BIGINT DEFAULT 0	#[字段] 变更后余额(分)
	,`value` BIGINT DEFAULT 0	#[字段] 增加的余额(分)
	,`ctime` BIGINT DEFAULT 0	#[字段] 创建时间
	, PRIMARY KEY(id) 
	,INDEX `iid` (`iid` asc)	#[索引] 流水号
	,INDEX `walletId` (`walletId` asc)	#[索引] 钱包ID
	,INDEX `orderId` (`orderId` asc)	#[索引] 订单ID
	,INDEX `ctime` (`ctime` desc)	#[索引] 创建时间
 ) AUTO_INCREMENT = 1;
#钱包
CREATE TABLE IF NOT EXISTS `wallet_40_wallet` (
	id BIGINT NOT NULL	#ID
	,`value` BIGINT DEFAULT 0	#[字段] 余额(分)
	,`inValue` BIGINT DEFAULT 0	#[字段] 累计收入(分)
	,`outValue` BIGINT DEFAULT 0	#[字段] 累计支出(分)
	,`iid` BIGINT DEFAULT 0	#[字段] 最后流水号
	,`ctime` BIGINT DEFAULT 0	#[字段] 创建时间
	,`mtime` BIGINT DEFAULT 0	#[字段] 修改时间
	, PRIMARY KEY(id) 
 ) ;
#订单
CREATE TABLE IF NOT EXISTS `wallet_40_order` (
	id BIGINT NOT NULL	#ID
	,`fitemId` BIGINT DEFAULT 0	#[字段] 支出流水ID
	,`titemId` BIGINT DEFAULT 0	#[字段] 收入流水ID
	,`fwalletId` BIGINT DEFAULT 0	#[字段] 支出钱包ID
	,`twalletId` BIGINT DEFAULT 0	#[字段] 收入钱包ID
	,`value` BIGINT DEFAULT 0	#[字段] 交易金额(分)
	,`ctime` BIGINT DEFAULT 0	#[字段] 创建时间
	, PRIMARY KEY(id) 
 ) ;
#交易流水
CREATE TABLE IF NOT EXISTS `wallet_40_item` (
	id BIGINT NOT NULL AUTO_INCREMENT	#ID
	,`iid` BIGINT DEFAULT 0	#[字段] 流水号
	,`walletId` BIGINT DEFAULT 0	#[字段] 钱包ID
	,`orderId` BIGINT DEFAULT 0	#[字段] 订单ID
	,`walletValue` BIGINT DEFAULT 0	#[字段] 变更后余额(分)
	,`value` BIGINT DEFAULT 0	#[字段] 增加的余额(分)
	,`ctime` BIGINT DEFAULT 0	#[字段] 创建时间
	, PRIMARY KEY(id) 
	,INDEX `iid` (`iid` asc)	#[索引] 流水号
	,INDEX `walletId` (`walletId` asc)	#[索引] 钱包ID
	,INDEX `orderId` (`orderId` asc)	#[索引] 订单ID
	,INDEX `ctime` (`ctime` desc)	#[索引] 创建时间
 ) AUTO_INCREMENT = 1;
#钱包
CREATE TABLE IF NOT EXISTS `wallet_41_wallet` (
	id BIGINT NOT NULL	#ID
	,`value` BIGINT DEFAULT 0	#[字段] 余额(分)
	,`inValue` BIGINT DEFAULT 0	#[字段] 累计收入(分)
	,`outValue` BIGINT DEFAULT 0	#[字段] 累计支出(分)
	,`iid` BIGINT DEFAULT 0	#[字段] 最后流水号
	,`ctime` BIGINT DEFAULT 0	#[字段] 创建时间
	,`mtime` BIGINT DEFAULT 0	#[字段] 修改时间
	, PRIMARY KEY(id) 
 ) ;
#订单
CREATE TABLE IF NOT EXISTS `wallet_41_order` (
	id BIGINT NOT NULL	#ID
	,`fitemId` BIGINT DEFAULT 0	#[字段] 支出流水ID
	,`titemId` BIGINT DEFAULT 0	#[字段] 收入流水ID
	,`fwalletId` BIGINT DEFAULT 0	#[字段] 支出钱包ID
	,`twalletId` BIGINT DEFAULT 0	#[字段] 收入钱包ID
	,`value` BIGINT DEFAULT 0	#[字段] 交易金额(分)
	,`ctime` BIGINT DEFAULT 0	#[字段] 创建时间
	, PRIMARY KEY(id) 
 ) ;
#交易流水
CREATE TABLE IF NOT EXISTS `wallet_41_item` (
	id BIGINT NOT NULL AUTO_INCREMENT	#ID
	,`iid` BIGINT DEFAULT 0	#[字段] 流水号
	,`walletId` BIGINT DEFAULT 0	#[字段] 钱包ID
	,`orderId` BIGINT DEFAULT 0	#[字段] 订单ID
	,`walletValue` BIGINT DEFAULT 0	#[字段] 变更后余额(分)
	,`value` BIGINT DEFAULT 0	#[字段] 增加的余额(分)
	,`ctime` BIGINT DEFAULT 0	#[字段] 创建时间
	, PRIMARY KEY(id) 
	,INDEX `iid` (`iid` asc)	#[索引] 流水号
	,INDEX `walletId` (`walletId` asc)	#[索引] 钱包ID
	,INDEX `orderId` (`orderId` asc)	#[索引] 订单ID
	,INDEX `ctime` (`ctime` desc)	#[索引] 创建时间
 ) AUTO_INCREMENT = 1;
#钱包
CREATE TABLE IF NOT EXISTS `wallet_42_wallet` (
	id BIGINT NOT NULL	#ID
	,`value` BIGINT DEFAULT 0	#[字段] 余额(分)
	,`inValue` BIGINT DEFAULT 0	#[字段] 累计收入(分)
	,`outValue` BIGINT DEFAULT 0	#[字段] 累计支出(分)
	,`iid` BIGINT DEFAULT 0	#[字段] 最后流水号
	,`ctime` BIGINT DEFAULT 0	#[字段] 创建时间
	,`mtime` BIGINT DEFAULT 0	#[字段] 修改时间
	, PRIMARY KEY(id) 
 ) ;
#订单
CREATE TABLE IF NOT EXISTS `wallet_42_order` (
	id BIGINT NOT NULL	#ID
	,`fitemId` BIGINT DEFAULT 0	#[字段] 支出流水ID
	,`titemId` BIGINT DEFAULT 0	#[字段] 收入流水ID
	,`fwalletId` BIGINT DEFAULT 0	#[字段] 支出钱包ID
	,`twalletId` BIGINT DEFAULT 0	#[字段] 收入钱包ID
	,`value` BIGINT DEFAULT 0	#[字段] 交易金额(分)
	,`ctime` BIGINT DEFAULT 0	#[字段] 创建时间
	, PRIMARY KEY(id) 
 ) ;
#交易流水
CREATE TABLE IF NOT EXISTS `wallet_42_item` (
	id BIGINT NOT NULL AUTO_INCREMENT	#ID
	,`iid` BIGINT DEFAULT 0	#[字段] 流水号
	,`walletId` BIGINT DEFAULT 0	#[字段] 钱包ID
	,`orderId` BIGINT DEFAULT 0	#[字段] 订单ID
	,`walletValue` BIGINT DEFAULT 0	#[字段] 变更后余额(分)
	,`value` BIGINT DEFAULT 0	#[字段] 增加的余额(分)
	,`ctime` BIGINT DEFAULT 0	#[字段] 创建时间
	, PRIMARY KEY(id) 
	,INDEX `iid` (`iid` asc)	#[索引] 流水号
	,INDEX `walletId` (`walletId` asc)	#[索引] 钱包ID
	,INDEX `orderId` (`orderId` asc)	#[索引] 订单ID
	,INDEX `ctime` (`ctime` desc)	#[索引] 创建时间
 ) AUTO_INCREMENT = 1;
#钱包
CREATE TABLE IF NOT EXISTS `wallet_43_wallet` (
	id BIGINT NOT NULL	#ID
	,`value` BIGINT DEFAULT 0	#[字段] 余额(分)
	,`inValue` BIGINT DEFAULT 0	#[字段] 累计收入(分)
	,`outValue` BIGINT DEFAULT 0	#[字段] 累计支出(分)
	,`iid` BIGINT DEFAULT 0	#[字段] 最后流水号
	,`ctime` BIGINT DEFAULT 0	#[字段] 创建时间
	,`mtime` BIGINT DEFAULT 0	#[字段] 修改时间
	, PRIMARY KEY(id) 
 ) ;
#订单
CREATE TABLE IF NOT EXISTS `wallet_43_order` (
	id BIGINT NOT NULL	#ID
	,`fitemId` BIGINT DEFAULT 0	#[字段] 支出流水ID
	,`titemId` BIGINT DEFAULT 0	#[字段] 收入流水ID
	,`fwalletId` BIGINT DEFAULT 0	#[字段] 支出钱包ID
	,`twalletId` BIGINT DEFAULT 0	#[字段] 收入钱包ID
	,`value` BIGINT DEFAULT 0	#[字段] 交易金额(分)
	,`ctime` BIGINT DEFAULT 0	#[字段] 创建时间
	, PRIMARY KEY(id) 
 ) ;
#交易流水
CREATE TABLE IF NOT EXISTS `wallet_43_item` (
	id BIGINT NOT NULL AUTO_INCREMENT	#ID
	,`iid` BIGINT DEFAULT 0	#[字段] 流水号
	,`walletId` BIGINT DEFAULT 0	#[字段] 钱包ID
	,`orderId` BIGINT DEFAULT 0	#[字段] 订单ID
	,`walletValue` BIGINT DEFAULT 0	#[字段] 变更后余额(分)
	,`value` BIGINT DEFAULT 0	#[字段] 增加的余额(分)
	,`ctime` BIGINT DEFAULT 0	#[字段] 创建时间
	, PRIMARY KEY(id) 
	,INDEX `iid` (`iid` asc)	#[索引] 流水号
	,INDEX `walletId` (`walletId` asc)	#[索引] 钱包ID
	,INDEX `orderId` (`orderId` asc)	#[索引] 订单ID
	,INDEX `ctime` (`ctime` desc)	#[索引] 创建时间
 ) AUTO_INCREMENT = 1;
#钱包
CREATE TABLE IF NOT EXISTS `wallet_44_wallet` (
	id BIGINT NOT NULL	#ID
	,`value` BIGINT DEFAULT 0	#[字段] 余额(分)
	,`inValue` BIGINT DEFAULT 0	#[字段] 累计收入(分)
	,`outValue` BIGINT DEFAULT 0	#[字段] 累计支出(分)
	,`iid` BIGINT DEFAULT 0	#[字段] 最后流水号
	,`ctime` BIGINT DEFAULT 0	#[字段] 创建时间
	,`mtime` BIGINT DEFAULT 0	#[字段] 修改时间
	, PRIMARY KEY(id) 
 ) ;
#订单
CREATE TABLE IF NOT EXISTS `wallet_44_order` (
	id BIGINT NOT NULL	#ID
	,`fitemId` BIGINT DEFAULT 0	#[字段] 支出流水ID
	,`titemId` BIGINT DEFAULT 0	#[字段] 收入流水ID
	,`fwalletId` BIGINT DEFAULT 0	#[字段] 支出钱包ID
	,`twalletId` BIGINT DEFAULT 0	#[字段] 收入钱包ID
	,`value` BIGINT DEFAULT 0	#[字段] 交易金额(分)
	,`ctime` BIGINT DEFAULT 0	#[字段] 创建时间
	, PRIMARY KEY(id) 
 ) ;
#交易流水
CREATE TABLE IF NOT EXISTS `wallet_44_item` (
	id BIGINT NOT NULL AUTO_INCREMENT	#ID
	,`iid` BIGINT DEFAULT 0	#[字段] 流水号
	,`walletId` BIGINT DEFAULT 0	#[字段] 钱包ID
	,`orderId` BIGINT DEFAULT 0	#[字段] 订单ID
	,`walletValue` BIGINT DEFAULT 0	#[字段] 变更后余额(分)
	,`value` BIGINT DEFAULT 0	#[字段] 增加的余额(分)
	,`ctime` BIGINT DEFAULT 0	#[字段] 创建时间
	, PRIMARY KEY(id) 
	,INDEX `iid` (`iid` asc)	#[索引] 流水号
	,INDEX `walletId` (`walletId` asc)	#[索引] 钱包ID
	,INDEX `orderId` (`orderId` asc)	#[索引] 订单ID
	,INDEX `ctime` (`ctime` desc)	#[索引] 创建时间
 ) AUTO_INCREMENT = 1;
#钱包
CREATE TABLE IF NOT EXISTS `wallet_45_wallet` (
	id BIGINT NOT NULL	#ID
	,`value` BIGINT DEFAULT 0	#[字段] 余额(分)
	,`inValue` BIGINT DEFAULT 0	#[字段] 累计收入(分)
	,`outValue` BIGINT DEFAULT 0	#[字段] 累计支出(分)
	,`iid` BIGINT DEFAULT 0	#[字段] 最后流水号
	,`ctime` BIGINT DEFAULT 0	#[字段] 创建时间
	,`mtime` BIGINT DEFAULT 0	#[字段] 修改时间
	, PRIMARY KEY(id) 
 ) ;
#订单
CREATE TABLE IF NOT EXISTS `wallet_45_order` (
	id BIGINT NOT NULL	#ID
	,`fitemId` BIGINT DEFAULT 0	#[字段] 支出流水ID
	,`titemId` BIGINT DEFAULT 0	#[字段] 收入流水ID
	,`fwalletId` BIGINT DEFAULT 0	#[字段] 支出钱包ID
	,`twalletId` BIGINT DEFAULT 0	#[字段] 收入钱包ID
	,`value` BIGINT DEFAULT 0	#[字段] 交易金额(分)
	,`ctime` BIGINT DEFAULT 0	#[字段] 创建时间
	, PRIMARY KEY(id) 
 ) ;
#交易流水
CREATE TABLE IF NOT EXISTS `wallet_45_item` (
	id BIGINT NOT NULL AUTO_INCREMENT	#ID
	,`iid` BIGINT DEFAULT 0	#[字段] 流水号
	,`walletId` BIGINT DEFAULT 0	#[字段] 钱包ID
	,`orderId` BIGINT DEFAULT 0	#[字段] 订单ID
	,`walletValue` BIGINT DEFAULT 0	#[字段] 变更后余额(分)
	,`value` BIGINT DEFAULT 0	#[字段] 增加的余额(分)
	,`ctime` BIGINT DEFAULT 0	#[字段] 创建时间
	, PRIMARY KEY(id) 
	,INDEX `iid` (`iid` asc)	#[索引] 流水号
	,INDEX `walletId` (`walletId` asc)	#[索引] 钱包ID
	,INDEX `orderId` (`orderId` asc)	#[索引] 订单ID
	,INDEX `ctime` (`ctime` desc)	#[索引] 创建时间
 ) AUTO_INCREMENT = 1;
#钱包
CREATE TABLE IF NOT EXISTS `wallet_46_wallet` (
	id BIGINT NOT NULL	#ID
	,`value` BIGINT DEFAULT 0	#[字段] 余额(分)
	,`inValue` BIGINT DEFAULT 0	#[字段] 累计收入(分)
	,`outValue` BIGINT DEFAULT 0	#[字段] 累计支出(分)
	,`iid` BIGINT DEFAULT 0	#[字段] 最后流水号
	,`ctime` BIGINT DEFAULT 0	#[字段] 创建时间
	,`mtime` BIGINT DEFAULT 0	#[字段] 修改时间
	, PRIMARY KEY(id) 
 ) ;
#订单
CREATE TABLE IF NOT EXISTS `wallet_46_order` (
	id BIGINT NOT NULL	#ID
	,`fitemId` BIGINT DEFAULT 0	#[字段] 支出流水ID
	,`titemId` BIGINT DEFAULT 0	#[字段] 收入流水ID
	,`fwalletId` BIGINT DEFAULT 0	#[字段] 支出钱包ID
	,`twalletId` BIGINT DEFAULT 0	#[字段] 收入钱包ID
	,`value` BIGINT DEFAULT 0	#[字段] 交易金额(分)
	,`ctime` BIGINT DEFAULT 0	#[字段] 创建时间
	, PRIMARY KEY(id) 
 ) ;
#交易流水
CREATE TABLE IF NOT EXISTS `wallet_46_item` (
	id BIGINT NOT NULL AUTO_INCREMENT	#ID
	,`iid` BIGINT DEFAULT 0	#[字段] 流水号
	,`walletId` BIGINT DEFAULT 0	#[字段] 钱包ID
	,`orderId` BIGINT DEFAULT 0	#[字段] 订单ID
	,`walletValue` BIGINT DEFAULT 0	#[字段] 变更后余额(分)
	,`value` BIGINT DEFAULT 0	#[字段] 增加的余额(分)
	,`ctime` BIGINT DEFAULT 0	#[字段] 创建时间
	, PRIMARY KEY(id) 
	,INDEX `iid` (`iid` asc)	#[索引] 流水号
	,INDEX `walletId` (`walletId` asc)	#[索引] 钱包ID
	,INDEX `orderId` (`orderId` asc)	#[索引] 订单ID
	,INDEX `ctime` (`ctime` desc)	#[索引] 创建时间
 ) AUTO_INCREMENT = 1;
#钱包
CREATE TABLE IF NOT EXISTS `wallet_47_wallet` (
	id BIGINT NOT NULL	#ID
	,`value` BIGINT DEFAULT 0	#[字段] 余额(分)
	,`inValue` BIGINT DEFAULT 0	#[字段] 累计收入(分)
	,`outValue` BIGINT DEFAULT 0	#[字段] 累计支出(分)
	,`iid` BIGINT DEFAULT 0	#[字段] 最后流水号
	,`ctime` BIGINT DEFAULT 0	#[字段] 创建时间
	,`mtime` BIGINT DEFAULT 0	#[字段] 修改时间
	, PRIMARY KEY(id) 
 ) ;
#订单
CREATE TABLE IF NOT EXISTS `wallet_47_order` (
	id BIGINT NOT NULL	#ID
	,`fitemId` BIGINT DEFAULT 0	#[字段] 支出流水ID
	,`titemId` BIGINT DEFAULT 0	#[字段] 收入流水ID
	,`fwalletId` BIGINT DEFAULT 0	#[字段] 支出钱包ID
	,`twalletId` BIGINT DEFAULT 0	#[字段] 收入钱包ID
	,`value` BIGINT DEFAULT 0	#[字段] 交易金额(分)
	,`ctime` BIGINT DEFAULT 0	#[字段] 创建时间
	, PRIMARY KEY(id) 
 ) ;
#交易流水
CREATE TABLE IF NOT EXISTS `wallet_47_item` (
	id BIGINT NOT NULL AUTO_INCREMENT	#ID
	,`iid` BIGINT DEFAULT 0	#[字段] 流水号
	,`walletId` BIGINT DEFAULT 0	#[字段] 钱包ID
	,`orderId` BIGINT DEFAULT 0	#[字段] 订单ID
	,`walletValue` BIGINT DEFAULT 0	#[字段] 变更后余额(分)
	,`value` BIGINT DEFAULT 0	#[字段] 增加的余额(分)
	,`ctime` BIGINT DEFAULT 0	#[字段] 创建时间
	, PRIMARY KEY(id) 
	,INDEX `iid` (`iid` asc)	#[索引] 流水号
	,INDEX `walletId` (`walletId` asc)	#[索引] 钱包ID
	,INDEX `orderId` (`orderId` asc)	#[索引] 订单ID
	,INDEX `ctime` (`ctime` desc)	#[索引] 创建时间
 ) AUTO_INCREMENT = 1;
#钱包
CREATE TABLE IF NOT EXISTS `wallet_48_wallet` (
	id BIGINT NOT NULL	#ID
	,`value` BIGINT DEFAULT 0	#[字段] 余额(分)
	,`inValue` BIGINT DEFAULT 0	#[字段] 累计收入(分)
	,`outValue` BIGINT DEFAULT 0	#[字段] 累计支出(分)
	,`iid` BIGINT DEFAULT 0	#[字段] 最后流水号
	,`ctime` BIGINT DEFAULT 0	#[字段] 创建时间
	,`mtime` BIGINT DEFAULT 0	#[字段] 修改时间
	, PRIMARY KEY(id) 
 ) ;
#订单
CREATE TABLE IF NOT EXISTS `wallet_48_order` (
	id BIGINT NOT NULL	#ID
	,`fitemId` BIGINT DEFAULT 0	#[字段] 支出流水ID
	,`titemId` BIGINT DEFAULT 0	#[字段] 收入流水ID
	,`fwalletId` BIGINT DEFAULT 0	#[字段] 支出钱包ID
	,`twalletId` BIGINT DEFAULT 0	#[字段] 收入钱包ID
	,`value` BIGINT DEFAULT 0	#[字段] 交易金额(分)
	,`ctime` BIGINT DEFAULT 0	#[字段] 创建时间
	, PRIMARY KEY(id) 
 ) ;
#交易流水
CREATE TABLE IF NOT EXISTS `wallet_48_item` (
	id BIGINT NOT NULL AUTO_INCREMENT	#ID
	,`iid` BIGINT DEFAULT 0	#[字段] 流水号
	,`walletId` BIGINT DEFAULT 0	#[字段] 钱包ID
	,`orderId` BIGINT DEFAULT 0	#[字段] 订单ID
	,`walletValue` BIGINT DEFAULT 0	#[字段] 变更后余额(分)
	,`value` BIGINT DEFAULT 0	#[字段] 增加的余额(分)
	,`ctime` BIGINT DEFAULT 0	#[字段] 创建时间
	, PRIMARY KEY(id) 
	,INDEX `iid` (`iid` asc)	#[索引] 流水号
	,INDEX `walletId` (`walletId` asc)	#[索引] 钱包ID
	,INDEX `orderId` (`orderId` asc)	#[索引] 订单ID
	,INDEX `ctime` (`ctime` desc)	#[索引] 创建时间
 ) AUTO_INCREMENT = 1;
#钱包
CREATE TABLE IF NOT EXISTS `wallet_49_wallet` (
	id BIGINT NOT NULL	#ID
	,`value` BIGINT DEFAULT 0	#[字段] 余额(分)
	,`inValue` BIGINT DEFAULT 0	#[字段] 累计收入(分)
	,`outValue` BIGINT DEFAULT 0	#[字段] 累计支出(分)
	,`iid` BIGINT DEFAULT 0	#[字段] 最后流水号
	,`ctime` BIGINT DEFAULT 0	#[字段] 创建时间
	,`mtime` BIGINT DEFAULT 0	#[字段] 修改时间
	, PRIMARY KEY(id) 
 ) ;
#订单
CREATE TABLE IF NOT EXISTS `wallet_49_order` (
	id BIGINT NOT NULL	#ID
	,`fitemId` BIGINT DEFAULT 0	#[字段] 支出流水ID
	,`titemId` BIGINT DEFAULT 0	#[字段] 收入流水ID
	,`fwalletId` BIGINT DEFAULT 0	#[字段] 支出钱包ID
	,`twalletId` BIGINT DEFAULT 0	#[字段] 收入钱包ID
	,`value` BIGINT DEFAULT 0	#[字段] 交易金额(分)
	,`ctime` BIGINT DEFAULT 0	#[字段] 创建时间
	, PRIMARY KEY(id) 
 ) ;
#交易流水
CREATE TABLE IF NOT EXISTS `wallet_49_item` (
	id BIGINT NOT NULL AUTO_INCREMENT	#ID
	,`iid` BIGINT DEFAULT 0	#[字段] 流水号
	,`walletId` BIGINT DEFAULT 0	#[字段] 钱包ID
	,`orderId` BIGINT DEFAULT 0	#[字段] 订单ID
	,`walletValue` BIGINT DEFAULT 0	#[字段] 变更后余额(分)
	,`value` BIGINT DEFAULT 0	#[字段] 增加的余额(分)
	,`ctime` BIGINT DEFAULT 0	#[字段] 创建时间
	, PRIMARY KEY(id) 
	,INDEX `iid` (`iid` asc)	#[索引] 流水号
	,INDEX `walletId` (`walletId` asc)	#[索引] 钱包ID
	,INDEX `orderId` (`orderId` asc)	#[索引] 订单ID
	,INDEX `ctime` (`ctime` desc)	#[索引] 创建时间
 ) AUTO_INCREMENT = 1;
#钱包
CREATE TABLE IF NOT EXISTS `wallet_50_wallet` (
	id BIGINT NOT NULL	#ID
	,`value` BIGINT DEFAULT 0	#[字段] 余额(分)
	,`inValue` BIGINT DEFAULT 0	#[字段] 累计收入(分)
	,`outValue` BIGINT DEFAULT 0	#[字段] 累计支出(分)
	,`iid` BIGINT DEFAULT 0	#[字段] 最后流水号
	,`ctime` BIGINT DEFAULT 0	#[字段] 创建时间
	,`mtime` BIGINT DEFAULT 0	#[字段] 修改时间
	, PRIMARY KEY(id) 
 ) ;
#订单
CREATE TABLE IF NOT EXISTS `wallet_50_order` (
	id BIGINT NOT NULL	#ID
	,`fitemId` BIGINT DEFAULT 0	#[字段] 支出流水ID
	,`titemId` BIGINT DEFAULT 0	#[字段] 收入流水ID
	,`fwalletId` BIGINT DEFAULT 0	#[字段] 支出钱包ID
	,`twalletId` BIGINT DEFAULT 0	#[字段] 收入钱包ID
	,`value` BIGINT DEFAULT 0	#[字段] 交易金额(分)
	,`ctime` BIGINT DEFAULT 0	#[字段] 创建时间
	, PRIMARY KEY(id) 
 ) ;
#交易流水
CREATE TABLE IF NOT EXISTS `wallet_50_item` (
	id BIGINT NOT NULL AUTO_INCREMENT	#ID
	,`iid` BIGINT DEFAULT 0	#[字段] 流水号
	,`walletId` BIGINT DEFAULT 0	#[字段] 钱包ID
	,`orderId` BIGINT DEFAULT 0	#[字段] 订单ID
	,`walletValue` BIGINT DEFAULT 0	#[字段] 变更后余额(分)
	,`value` BIGINT DEFAULT 0	#[字段] 增加的余额(分)
	,`ctime` BIGINT DEFAULT 0	#[字段] 创建时间
	, PRIMARY KEY(id) 
	,INDEX `iid` (`iid` asc)	#[索引] 流水号
	,INDEX `walletId` (`walletId` asc)	#[索引] 钱包ID
	,INDEX `orderId` (`orderId` asc)	#[索引] 订单ID
	,INDEX `ctime` (`ctime` desc)	#[索引] 创建时间
 ) AUTO_INCREMENT = 1;
#钱包
CREATE TABLE IF NOT EXISTS `wallet_51_wallet` (
	id BIGINT NOT NULL	#ID
	,`value` BIGINT DEFAULT 0	#[字段] 余额(分)
	,`inValue` BIGINT DEFAULT 0	#[字段] 累计收入(分)
	,`outValue` BIGINT DEFAULT 0	#[字段] 累计支出(分)
	,`iid` BIGINT DEFAULT 0	#[字段] 最后流水号
	,`ctime` BIGINT DEFAULT 0	#[字段] 创建时间
	,`mtime` BIGINT DEFAULT 0	#[字段] 修改时间
	, PRIMARY KEY(id) 
 ) ;
#订单
CREATE TABLE IF NOT EXISTS `wallet_51_order` (
	id BIGINT NOT NULL	#ID
	,`fitemId` BIGINT DEFAULT 0	#[字段] 支出流水ID
	,`titemId` BIGINT DEFAULT 0	#[字段] 收入流水ID
	,`fwalletId` BIGINT DEFAULT 0	#[字段] 支出钱包ID
	,`twalletId` BIGINT DEFAULT 0	#[字段] 收入钱包ID
	,`value` BIGINT DEFAULT 0	#[字段] 交易金额(分)
	,`ctime` BIGINT DEFAULT 0	#[字段] 创建时间
	, PRIMARY KEY(id) 
 ) ;
#交易流水
CREATE TABLE IF NOT EXISTS `wallet_51_item` (
	id BIGINT NOT NULL AUTO_INCREMENT	#ID
	,`iid` BIGINT DEFAULT 0	#[字段] 流水号
	,`walletId` BIGINT DEFAULT 0	#[字段] 钱包ID
	,`orderId` BIGINT DEFAULT 0	#[字段] 订单ID
	,`walletValue` BIGINT DEFAULT 0	#[字段] 变更后余额(分)
	,`value` BIGINT DEFAULT 0	#[字段] 增加的余额(分)
	,`ctime` BIGINT DEFAULT 0	#[字段] 创建时间
	, PRIMARY KEY(id) 
	,INDEX `iid` (`iid` asc)	#[索引] 流水号
	,INDEX `walletId` (`walletId` asc)	#[索引] 钱包ID
	,INDEX `orderId` (`orderId` asc)	#[索引] 订单ID
	,INDEX `ctime` (`ctime` desc)	#[索引] 创建时间
 ) AUTO_INCREMENT = 1;
#钱包
CREATE TABLE IF NOT EXISTS `wallet_52_wallet` (
	id BIGINT NOT NULL	#ID
	,`value` BIGINT DEFAULT 0	#[字段] 余额(分)
	,`inValue` BIGINT DEFAULT 0	#[字段] 累计收入(分)
	,`outValue` BIGINT DEFAULT 0	#[字段] 累计支出(分)
	,`iid` BIGINT DEFAULT 0	#[字段] 最后流水号
	,`ctime` BIGINT DEFAULT 0	#[字段] 创建时间
	,`mtime` BIGINT DEFAULT 0	#[字段] 修改时间
	, PRIMARY KEY(id) 
 ) ;
#订单
CREATE TABLE IF NOT EXISTS `wallet_52_order` (
	id BIGINT NOT NULL	#ID
	,`fitemId` BIGINT DEFAULT 0	#[字段] 支出流水ID
	,`titemId` BIGINT DEFAULT 0	#[字段] 收入流水ID
	,`fwalletId` BIGINT DEFAULT 0	#[字段] 支出钱包ID
	,`twalletId` BIGINT DEFAULT 0	#[字段] 收入钱包ID
	,`value` BIGINT DEFAULT 0	#[字段] 交易金额(分)
	,`ctime` BIGINT DEFAULT 0	#[字段] 创建时间
	, PRIMARY KEY(id) 
 ) ;
#交易流水
CREATE TABLE IF NOT EXISTS `wallet_52_item` (
	id BIGINT NOT NULL AUTO_INCREMENT	#ID
	,`iid` BIGINT DEFAULT 0	#[字段] 流水号
	,`walletId` BIGINT DEFAULT 0	#[字段] 钱包ID
	,`orderId` BIGINT DEFAULT 0	#[字段] 订单ID
	,`walletValue` BIGINT DEFAULT 0	#[字段] 变更后余额(分)
	,`value` BIGINT DEFAULT 0	#[字段] 增加的余额(分)
	,`ctime` BIGINT DEFAULT 0	#[字段] 创建时间
	, PRIMARY KEY(id) 
	,INDEX `iid` (`iid` asc)	#[索引] 流水号
	,INDEX `walletId` (`walletId` asc)	#[索引] 钱包ID
	,INDEX `orderId` (`orderId` asc)	#[索引] 订单ID
	,INDEX `ctime` (`ctime` desc)	#[索引] 创建时间
 ) AUTO_INCREMENT = 1;
#钱包
CREATE TABLE IF NOT EXISTS `wallet_53_wallet` (
	id BIGINT NOT NULL	#ID
	,`value` BIGINT DEFAULT 0	#[字段] 余额(分)
	,`inValue` BIGINT DEFAULT 0	#[字段] 累计收入(分)
	,`outValue` BIGINT DEFAULT 0	#[字段] 累计支出(分)
	,`iid` BIGINT DEFAULT 0	#[字段] 最后流水号
	,`ctime` BIGINT DEFAULT 0	#[字段] 创建时间
	,`mtime` BIGINT DEFAULT 0	#[字段] 修改时间
	, PRIMARY KEY(id) 
 ) ;
#订单
CREATE TABLE IF NOT EXISTS `wallet_53_order` (
	id BIGINT NOT NULL	#ID
	,`fitemId` BIGINT DEFAULT 0	#[字段] 支出流水ID
	,`titemId` BIGINT DEFAULT 0	#[字段] 收入流水ID
	,`fwalletId` BIGINT DEFAULT 0	#[字段] 支出钱包ID
	,`twalletId` BIGINT DEFAULT 0	#[字段] 收入钱包ID
	,`value` BIGINT DEFAULT 0	#[字段] 交易金额(分)
	,`ctime` BIGINT DEFAULT 0	#[字段] 创建时间
	, PRIMARY KEY(id) 
 ) ;
#交易流水
CREATE TABLE IF NOT EXISTS `wallet_53_item` (
	id BIGINT NOT NULL AUTO_INCREMENT	#ID
	,`iid` BIGINT DEFAULT 0	#[字段] 流水号
	,`walletId` BIGINT DEFAULT 0	#[字段] 钱包ID
	,`orderId` BIGINT DEFAULT 0	#[字段] 订单ID
	,`walletValue` BIGINT DEFAULT 0	#[字段] 变更后余额(分)
	,`value` BIGINT DEFAULT 0	#[字段] 增加的余额(分)
	,`ctime` BIGINT DEFAULT 0	#[字段] 创建时间
	, PRIMARY KEY(id) 
	,INDEX `iid` (`iid` asc)	#[索引] 流水号
	,INDEX `walletId` (`walletId` asc)	#[索引] 钱包ID
	,INDEX `orderId` (`orderId` asc)	#[索引] 订单ID
	,INDEX `ctime` (`ctime` desc)	#[索引] 创建时间
 ) AUTO_INCREMENT = 1;
#钱包
CREATE TABLE IF NOT EXISTS `wallet_54_wallet` (
	id BIGINT NOT NULL	#ID
	,`value` BIGINT DEFAULT 0	#[字段] 余额(分)
	,`inValue` BIGINT DEFAULT 0	#[字段] 累计收入(分)
	,`outValue` BIGINT DEFAULT 0	#[字段] 累计支出(分)
	,`iid` BIGINT DEFAULT 0	#[字段] 最后流水号
	,`ctime` BIGINT DEFAULT 0	#[字段] 创建时间
	,`mtime` BIGINT DEFAULT 0	#[字段] 修改时间
	, PRIMARY KEY(id) 
 ) ;
#订单
CREATE TABLE IF NOT EXISTS `wallet_54_order` (
	id BIGINT NOT NULL	#ID
	,`fitemId` BIGINT DEFAULT 0	#[字段] 支出流水ID
	,`titemId` BIGINT DEFAULT 0	#[字段] 收入流水ID
	,`fwalletId` BIGINT DEFAULT 0	#[字段] 支出钱包ID
	,`twalletId` BIGINT DEFAULT 0	#[字段] 收入钱包ID
	,`value` BIGINT DEFAULT 0	#[字段] 交易金额(分)
	,`ctime` BIGINT DEFAULT 0	#[字段] 创建时间
	, PRIMARY KEY(id) 
 ) ;
#交易流水
CREATE TABLE IF NOT EXISTS `wallet_54_item` (
	id BIGINT NOT NULL AUTO_INCREMENT	#ID
	,`iid` BIGINT DEFAULT 0	#[字段] 流水号
	,`walletId` BIGINT DEFAULT 0	#[字段] 钱包ID
	,`orderId` BIGINT DEFAULT 0	#[字段] 订单ID
	,`walletValue` BIGINT DEFAULT 0	#[字段] 变更后余额(分)
	,`value` BIGINT DEFAULT 0	#[字段] 增加的余额(分)
	,`ctime` BIGINT DEFAULT 0	#[字段] 创建时间
	, PRIMARY KEY(id) 
	,INDEX `iid` (`iid` asc)	#[索引] 流水号
	,INDEX `walletId` (`walletId` asc)	#[索引] 钱包ID
	,INDEX `orderId` (`orderId` asc)	#[索引] 订单ID
	,INDEX `ctime` (`ctime` desc)	#[索引] 创建时间
 ) AUTO_INCREMENT = 1;
#钱包
CREATE TABLE IF NOT EXISTS `wallet_55_wallet` (
	id BIGINT NOT NULL	#ID
	,`value` BIGINT DEFAULT 0	#[字段] 余额(分)
	,`inValue` BIGINT DEFAULT 0	#[字段] 累计收入(分)
	,`outValue` BIGINT DEFAULT 0	#[字段] 累计支出(分)
	,`iid` BIGINT DEFAULT 0	#[字段] 最后流水号
	,`ctime` BIGINT DEFAULT 0	#[字段] 创建时间
	,`mtime` BIGINT DEFAULT 0	#[字段] 修改时间
	, PRIMARY KEY(id) 
 ) ;
#订单
CREATE TABLE IF NOT EXISTS `wallet_55_order` (
	id BIGINT NOT NULL	#ID
	,`fitemId` BIGINT DEFAULT 0	#[字段] 支出流水ID
	,`titemId` BIGINT DEFAULT 0	#[字段] 收入流水ID
	,`fwalletId` BIGINT DEFAULT 0	#[字段] 支出钱包ID
	,`twalletId` BIGINT DEFAULT 0	#[字段] 收入钱包ID
	,`value` BIGINT DEFAULT 0	#[字段] 交易金额(分)
	,`ctime` BIGINT DEFAULT 0	#[字段] 创建时间
	, PRIMARY KEY(id) 
 ) ;
#交易流水
CREATE TABLE IF NOT EXISTS `wallet_55_item` (
	id BIGINT NOT NULL AUTO_INCREMENT	#ID
	,`iid` BIGINT DEFAULT 0	#[字段] 流水号
	,`walletId` BIGINT DEFAULT 0	#[字段] 钱包ID
	,`orderId` BIGINT DEFAULT 0	#[字段] 订单ID
	,`walletValue` BIGINT DEFAULT 0	#[字段] 变更后余额(分)
	,`value` BIGINT DEFAULT 0	#[字段] 增加的余额(分)
	,`ctime` BIGINT DEFAULT 0	#[字段] 创建时间
	, PRIMARY KEY(id) 
	,INDEX `iid` (`iid` asc)	#[索引] 流水号
	,INDEX `walletId` (`walletId` asc)	#[索引] 钱包ID
	,INDEX `orderId` (`orderId` asc)	#[索引] 订单ID
	,INDEX `ctime` (`ctime` desc)	#[索引] 创建时间
 ) AUTO_INCREMENT = 1;
#钱包
CREATE TABLE IF NOT EXISTS `wallet_56_wallet` (
	id BIGINT NOT NULL	#ID
	,`value` BIGINT DEFAULT 0	#[字段] 余额(分)
	,`inValue` BIGINT DEFAULT 0	#[字段] 累计收入(分)
	,`outValue` BIGINT DEFAULT 0	#[字段] 累计支出(分)
	,`iid` BIGINT DEFAULT 0	#[字段] 最后流水号
	,`ctime` BIGINT DEFAULT 0	#[字段] 创建时间
	,`mtime` BIGINT DEFAULT 0	#[字段] 修改时间
	, PRIMARY KEY(id) 
 ) ;
#订单
CREATE TABLE IF NOT EXISTS `wallet_56_order` (
	id BIGINT NOT NULL	#ID
	,`fitemId` BIGINT DEFAULT 0	#[字段] 支出流水ID
	,`titemId` BIGINT DEFAULT 0	#[字段] 收入流水ID
	,`fwalletId` BIGINT DEFAULT 0	#[字段] 支出钱包ID
	,`twalletId` BIGINT DEFAULT 0	#[字段] 收入钱包ID
	,`value` BIGINT DEFAULT 0	#[字段] 交易金额(分)
	,`ctime` BIGINT DEFAULT 0	#[字段] 创建时间
	, PRIMARY KEY(id) 
 ) ;
#交易流水
CREATE TABLE IF NOT EXISTS `wallet_56_item` (
	id BIGINT NOT NULL AUTO_INCREMENT	#ID
	,`iid` BIGINT DEFAULT 0	#[字段] 流水号
	,`walletId` BIGINT DEFAULT 0	#[字段] 钱包ID
	,`orderId` BIGINT DEFAULT 0	#[字段] 订单ID
	,`walletValue` BIGINT DEFAULT 0	#[字段] 变更后余额(分)
	,`value` BIGINT DEFAULT 0	#[字段] 增加的余额(分)
	,`ctime` BIGINT DEFAULT 0	#[字段] 创建时间
	, PRIMARY KEY(id) 
	,INDEX `iid` (`iid` asc)	#[索引] 流水号
	,INDEX `walletId` (`walletId` asc)	#[索引] 钱包ID
	,INDEX `orderId` (`orderId` asc)	#[索引] 订单ID
	,INDEX `ctime` (`ctime` desc)	#[索引] 创建时间
 ) AUTO_INCREMENT = 1;
#钱包
CREATE TABLE IF NOT EXISTS `wallet_57_wallet` (
	id BIGINT NOT NULL	#ID
	,`value` BIGINT DEFAULT 0	#[字段] 余额(分)
	,`inValue` BIGINT DEFAULT 0	#[字段] 累计收入(分)
	,`outValue` BIGINT DEFAULT 0	#[字段] 累计支出(分)
	,`iid` BIGINT DEFAULT 0	#[字段] 最后流水号
	,`ctime` BIGINT DEFAULT 0	#[字段] 创建时间
	,`mtime` BIGINT DEFAULT 0	#[字段] 修改时间
	, PRIMARY KEY(id) 
 ) ;
#订单
CREATE TABLE IF NOT EXISTS `wallet_57_order` (
	id BIGINT NOT NULL	#ID
	,`fitemId` BIGINT DEFAULT 0	#[字段] 支出流水ID
	,`titemId` BIGINT DEFAULT 0	#[字段] 收入流水ID
	,`fwalletId` BIGINT DEFAULT 0	#[字段] 支出钱包ID
	,`twalletId` BIGINT DEFAULT 0	#[字段] 收入钱包ID
	,`value` BIGINT DEFAULT 0	#[字段] 交易金额(分)
	,`ctime` BIGINT DEFAULT 0	#[字段] 创建时间
	, PRIMARY KEY(id) 
 ) ;
#交易流水
CREATE TABLE IF NOT EXISTS `wallet_57_item` (
	id BIGINT NOT NULL AUTO_INCREMENT	#ID
	,`iid` BIGINT DEFAULT 0	#[字段] 流水号
	,`walletId` BIGINT DEFAULT 0	#[字段] 钱包ID
	,`orderId` BIGINT DEFAULT 0	#[字段] 订单ID
	,`walletValue` BIGINT DEFAULT 0	#[字段] 变更后余额(分)
	,`value` BIGINT DEFAULT 0	#[字段] 增加的余额(分)
	,`ctime` BIGINT DEFAULT 0	#[字段] 创建时间
	, PRIMARY KEY(id) 
	,INDEX `iid` (`iid` asc)	#[索引] 流水号
	,INDEX `walletId` (`walletId` asc)	#[索引] 钱包ID
	,INDEX `orderId` (`orderId` asc)	#[索引] 订单ID
	,INDEX `ctime` (`ctime` desc)	#[索引] 创建时间
 ) AUTO_INCREMENT = 1;
#钱包
CREATE TABLE IF NOT EXISTS `wallet_58_wallet` (
	id BIGINT NOT NULL	#ID
	,`value` BIGINT DEFAULT 0	#[字段] 余额(分)
	,`inValue` BIGINT DEFAULT 0	#[字段] 累计收入(分)
	,`outValue` BIGINT DEFAULT 0	#[字段] 累计支出(分)
	,`iid` BIGINT DEFAULT 0	#[字段] 最后流水号
	,`ctime` BIGINT DEFAULT 0	#[字段] 创建时间
	,`mtime` BIGINT DEFAULT 0	#[字段] 修改时间
	, PRIMARY KEY(id) 
 ) ;
#订单
CREATE TABLE IF NOT EXISTS `wallet_58_order` (
	id BIGINT NOT NULL	#ID
	,`fitemId` BIGINT DEFAULT 0	#[字段] 支出流水ID
	,`titemId` BIGINT DEFAULT 0	#[字段] 收入流水ID
	,`fwalletId` BIGINT DEFAULT 0	#[字段] 支出钱包ID
	,`twalletId` BIGINT DEFAULT 0	#[字段] 收入钱包ID
	,`value` BIGINT DEFAULT 0	#[字段] 交易金额(分)
	,`ctime` BIGINT DEFAULT 0	#[字段] 创建时间
	, PRIMARY KEY(id) 
 ) ;
#交易流水
CREATE TABLE IF NOT EXISTS `wallet_58_item` (
	id BIGINT NOT NULL AUTO_INCREMENT	#ID
	,`iid` BIGINT DEFAULT 0	#[字段] 流水号
	,`walletId` BIGINT DEFAULT 0	#[字段] 钱包ID
	,`orderId` BIGINT DEFAULT 0	#[字段] 订单ID
	,`walletValue` BIGINT DEFAULT 0	#[字段] 变更后余额(分)
	,`value` BIGINT DEFAULT 0	#[字段] 增加的余额(分)
	,`ctime` BIGINT DEFAULT 0	#[字段] 创建时间
	, PRIMARY KEY(id) 
	,INDEX `iid` (`iid` asc)	#[索引] 流水号
	,INDEX `walletId` (`walletId` asc)	#[索引] 钱包ID
	,INDEX `orderId` (`orderId` asc)	#[索引] 订单ID
	,INDEX `ctime` (`ctime` desc)	#[索引] 创建时间
 ) AUTO_INCREMENT = 1;
#钱包
CREATE TABLE IF NOT EXISTS `wallet_59_wallet` (
	id BIGINT NOT NULL	#ID
	,`value` BIGINT DEFAULT 0	#[字段] 余额(分)
	,`inValue` BIGINT DEFAULT 0	#[字段] 累计收入(分)
	,`outValue` BIGINT DEFAULT 0	#[字段] 累计支出(分)
	,`iid` BIGINT DEFAULT 0	#[字段] 最后流水号
	,`ctime` BIGINT DEFAULT 0	#[字段] 创建时间
	,`mtime` BIGINT DEFAULT 0	#[字段] 修改时间
	, PRIMARY KEY(id) 
 ) ;
#订单
CREATE TABLE IF NOT EXISTS `wallet_59_order` (
	id BIGINT NOT NULL	#ID
	,`fitemId` BIGINT DEFAULT 0	#[字段] 支出流水ID
	,`titemId` BIGINT DEFAULT 0	#[字段] 收入流水ID
	,`fwalletId` BIGINT DEFAULT 0	#[字段] 支出钱包ID
	,`twalletId` BIGINT DEFAULT 0	#[字段] 收入钱包ID
	,`value` BIGINT DEFAULT 0	#[字段] 交易金额(分)
	,`ctime` BIGINT DEFAULT 0	#[字段] 创建时间
	, PRIMARY KEY(id) 
 ) ;
#交易流水
CREATE TABLE IF NOT EXISTS `wallet_59_item` (
	id BIGINT NOT NULL AUTO_INCREMENT	#ID
	,`iid` BIGINT DEFAULT 0	#[字段] 流水号
	,`walletId` BIGINT DEFAULT 0	#[字段] 钱包ID
	,`orderId` BIGINT DEFAULT 0	#[字段] 订单ID
	,`walletValue` BIGINT DEFAULT 0	#[字段] 变更后余额(分)
	,`value` BIGINT DEFAULT 0	#[字段] 增加的余额(分)
	,`ctime` BIGINT DEFAULT 0	#[字段] 创建时间
	, PRIMARY KEY(id) 
	,INDEX `iid` (`iid` asc)	#[索引] 流水号
	,INDEX `walletId` (`walletId` asc)	#[索引] 钱包ID
	,INDEX `orderId` (`orderId` asc)	#[索引] 订单ID
	,INDEX `ctime` (`ctime` desc)	#[索引] 创建时间
 ) AUTO_INCREMENT = 1;
#钱包
CREATE TABLE IF NOT EXISTS `wallet_60_wallet` (
	id BIGINT NOT NULL	#ID
	,`value` BIGINT DEFAULT 0	#[字段] 余额(分)
	,`inValue` BIGINT DEFAULT 0	#[字段] 累计收入(分)
	,`outValue` BIGINT DEFAULT 0	#[字段] 累计支出(分)
	,`iid` BIGINT DEFAULT 0	#[字段] 最后流水号
	,`ctime` BIGINT DEFAULT 0	#[字段] 创建时间
	,`mtime` BIGINT DEFAULT 0	#[字段] 修改时间
	, PRIMARY KEY(id) 
 ) ;
#订单
CREATE TABLE IF NOT EXISTS `wallet_60_order` (
	id BIGINT NOT NULL	#ID
	,`fitemId` BIGINT DEFAULT 0	#[字段] 支出流水ID
	,`titemId` BIGINT DEFAULT 0	#[字段] 收入流水ID
	,`fwalletId` BIGINT DEFAULT 0	#[字段] 支出钱包ID
	,`twalletId` BIGINT DEFAULT 0	#[字段] 收入钱包ID
	,`value` BIGINT DEFAULT 0	#[字段] 交易金额(分)
	,`ctime` BIGINT DEFAULT 0	#[字段] 创建时间
	, PRIMARY KEY(id) 
 ) ;
#交易流水
CREATE TABLE IF NOT EXISTS `wallet_60_item` (
	id BIGINT NOT NULL AUTO_INCREMENT	#ID
	,`iid` BIGINT DEFAULT 0	#[字段] 流水号
	,`walletId` BIGINT DEFAULT 0	#[字段] 钱包ID
	,`orderId` BIGINT DEFAULT 0	#[字段] 订单ID
	,`walletValue` BIGINT DEFAULT 0	#[字段] 变更后余额(分)
	,`value` BIGINT DEFAULT 0	#[字段] 增加的余额(分)
	,`ctime` BIGINT DEFAULT 0	#[字段] 创建时间
	, PRIMARY KEY(id) 
	,INDEX `iid` (`iid` asc)	#[索引] 流水号
	,INDEX `walletId` (`walletId` asc)	#[索引] 钱包ID
	,INDEX `orderId` (`orderId` asc)	#[索引] 订单ID
	,INDEX `ctime` (`ctime` desc)	#[索引] 创建时间
 ) AUTO_INCREMENT = 1;
#钱包
CREATE TABLE IF NOT EXISTS `wallet_61_wallet` (
	id BIGINT NOT NULL	#ID
	,`value` BIGINT DEFAULT 0	#[字段] 余额(分)
	,`inValue` BIGINT DEFAULT 0	#[字段] 累计收入(分)
	,`outValue` BIGINT DEFAULT 0	#[字段] 累计支出(分)
	,`iid` BIGINT DEFAULT 0	#[字段] 最后流水号
	,`ctime` BIGINT DEFAULT 0	#[字段] 创建时间
	,`mtime` BIGINT DEFAULT 0	#[字段] 修改时间
	, PRIMARY KEY(id) 
 ) ;
#订单
CREATE TABLE IF NOT EXISTS `wallet_61_order` (
	id BIGINT NOT NULL	#ID
	,`fitemId` BIGINT DEFAULT 0	#[字段] 支出流水ID
	,`titemId` BIGINT DEFAULT 0	#[字段] 收入流水ID
	,`fwalletId` BIGINT DEFAULT 0	#[字段] 支出钱包ID
	,`twalletId` BIGINT DEFAULT 0	#[字段] 收入钱包ID
	,`value` BIGINT DEFAULT 0	#[字段] 交易金额(分)
	,`ctime` BIGINT DEFAULT 0	#[字段] 创建时间
	, PRIMARY KEY(id) 
 ) ;
#交易流水
CREATE TABLE IF NOT EXISTS `wallet_61_item` (
	id BIGINT NOT NULL AUTO_INCREMENT	#ID
	,`iid` BIGINT DEFAULT 0	#[字段] 流水号
	,`walletId` BIGINT DEFAULT 0	#[字段] 钱包ID
	,`orderId` BIGINT DEFAULT 0	#[字段] 订单ID
	,`walletValue` BIGINT DEFAULT 0	#[字段] 变更后余额(分)
	,`value` BIGINT DEFAULT 0	#[字段] 增加的余额(分)
	,`ctime` BIGINT DEFAULT 0	#[字段] 创建时间
	, PRIMARY KEY(id) 
	,INDEX `iid` (`iid` asc)	#[索引] 流水号
	,INDEX `walletId` (`walletId` asc)	#[索引] 钱包ID
	,INDEX `orderId` (`orderId` asc)	#[索引] 订单ID
	,INDEX `ctime` (`ctime` desc)	#[索引] 创建时间
 ) AUTO_INCREMENT = 1;
#钱包
CREATE TABLE IF NOT EXISTS `wallet_62_wallet` (
	id BIGINT NOT NULL	#ID
	,`value` BIGINT DEFAULT 0	#[字段] 余额(分)
	,`inValue` BIGINT DEFAULT 0	#[字段] 累计收入(分)
	,`outValue` BIGINT DEFAULT 0	#[字段] 累计支出(分)
	,`iid` BIGINT DEFAULT 0	#[字段] 最后流水号
	,`ctime` BIGINT DEFAULT 0	#[字段] 创建时间
	,`mtime` BIGINT DEFAULT 0	#[字段] 修改时间
	, PRIMARY KEY(id) 
 ) ;
#订单
CREATE TABLE IF NOT EXISTS `wallet_62_order` (
	id BIGINT NOT NULL	#ID
	,`fitemId` BIGINT DEFAULT 0	#[字段] 支出流水ID
	,`titemId` BIGINT DEFAULT 0	#[字段] 收入流水ID
	,`fwalletId` BIGINT DEFAULT 0	#[字段] 支出钱包ID
	,`twalletId` BIGINT DEFAULT 0	#[字段] 收入钱包ID
	,`value` BIGINT DEFAULT 0	#[字段] 交易金额(分)
	,`ctime` BIGINT DEFAULT 0	#[字段] 创建时间
	, PRIMARY KEY(id) 
 ) ;
#交易流水
CREATE TABLE IF NOT EXISTS `wallet_62_item` (
	id BIGINT NOT NULL AUTO_INCREMENT	#ID
	,`iid` BIGINT DEFAULT 0	#[字段] 流水号
	,`walletId` BIGINT DEFAULT 0	#[字段] 钱包ID
	,`orderId` BIGINT DEFAULT 0	#[字段] 订单ID
	,`walletValue` BIGINT DEFAULT 0	#[字段] 变更后余额(分)
	,`value` BIGINT DEFAULT 0	#[字段] 增加的余额(分)
	,`ctime` BIGINT DEFAULT 0	#[字段] 创建时间
	, PRIMARY KEY(id) 
	,INDEX `iid` (`iid` asc)	#[索引] 流水号
	,INDEX `walletId` (`walletId` asc)	#[索引] 钱包ID
	,INDEX `orderId` (`orderId` asc)	#[索引] 订单ID
	,INDEX `ctime` (`ctime` desc)	#[索引] 创建时间
 ) AUTO_INCREMENT = 1;
#钱包
CREATE TABLE IF NOT EXISTS `wallet_63_wallet` (
	id BIGINT NOT NULL	#ID
	,`value` BIGINT DEFAULT 0	#[字段] 余额(分)
	,`inValue` BIGINT DEFAULT 0	#[字段] 累计收入(分)
	,`outValue` BIGINT DEFAULT 0	#[字段] 累计支出(分)
	,`iid` BIGINT DEFAULT 0	#[字段] 最后流水号
	,`ctime` BIGINT DEFAULT 0	#[字段] 创建时间
	,`mtime` BIGINT DEFAULT 0	#[字段] 修改时间
	, PRIMARY KEY(id) 
 ) ;
#订单
CREATE TABLE IF NOT EXISTS `wallet_63_order` (
	id BIGINT NOT NULL	#ID
	,`fitemId` BIGINT DEFAULT 0	#[字段] 支出流水ID
	,`titemId` BIGINT DEFAULT 0	#[字段] 收入流水ID
	,`fwalletId` BIGINT DEFAULT 0	#[字段] 支出钱包ID
	,`twalletId` BIGINT DEFAULT 0	#[字段] 收入钱包ID
	,`value` BIGINT DEFAULT 0	#[字段] 交易金额(分)
	,`ctime` BIGINT DEFAULT 0	#[字段] 创建时间
	, PRIMARY KEY(id) 
 ) ;
#交易流水
CREATE TABLE IF NOT EXISTS `wallet_63_item` (
	id BIGINT NOT NULL AUTO_INCREMENT	#ID
	,`iid` BIGINT DEFAULT 0	#[字段] 流水号
	,`walletId` BIGINT DEFAULT 0	#[字段] 钱包ID
	,`orderId` BIGINT DEFAULT 0	#[字段] 订单ID
	,`walletValue` BIGINT DEFAULT 0	#[字段] 变更后余额(分)
	,`value` BIGINT DEFAULT 0	#[字段] 增加的余额(分)
	,`ctime` BIGINT DEFAULT 0	#[字段] 创建时间
	, PRIMARY KEY(id) 
	,INDEX `iid` (`iid` asc)	#[索引] 流水号
	,INDEX `walletId` (`walletId` asc)	#[索引] 钱包ID
	,INDEX `orderId` (`orderId` asc)	#[索引] 订单ID
	,INDEX `ctime` (`ctime` desc)	#[索引] 创建时间
 ) AUTO_INCREMENT = 1;
#钱包
CREATE TABLE IF NOT EXISTS `wallet_64_wallet` (
	id BIGINT NOT NULL	#ID
	,`value` BIGINT DEFAULT 0	#[字段] 余额(分)
	,`inValue` BIGINT DEFAULT 0	#[字段] 累计收入(分)
	,`outValue` BIGINT DEFAULT 0	#[字段] 累计支出(分)
	,`iid` BIGINT DEFAULT 0	#[字段] 最后流水号
	,`ctime` BIGINT DEFAULT 0	#[字段] 创建时间
	,`mtime` BIGINT DEFAULT 0	#[字段] 修改时间
	, PRIMARY KEY(id) 
 ) ;
#订单
CREATE TABLE IF NOT EXISTS `wallet_64_order` (
	id BIGINT NOT NULL	#ID
	,`fitemId` BIGINT DEFAULT 0	#[字段] 支出流水ID
	,`titemId` BIGINT DEFAULT 0	#[字段] 收入流水ID
	,`fwalletId` BIGINT DEFAULT 0	#[字段] 支出钱包ID
	,`twalletId` BIGINT DEFAULT 0	#[字段] 收入钱包ID
	,`value` BIGINT DEFAULT 0	#[字段] 交易金额(分)
	,`ctime` BIGINT DEFAULT 0	#[字段] 创建时间
	, PRIMARY KEY(id) 
 ) ;
#交易流水
CREATE TABLE IF NOT EXISTS `wallet_64_item` (
	id BIGINT NOT NULL AUTO_INCREMENT	#ID
	,`iid` BIGINT DEFAULT 0	#[字段] 流水号
	,`walletId` BIGINT DEFAULT 0	#[字段] 钱包ID
	,`orderId` BIGINT DEFAULT 0	#[字段] 订单ID
	,`walletValue` BIGINT DEFAULT 0	#[字段] 变更后余额(分)
	,`value` BIGINT DEFAULT 0	#[字段] 增加的余额(分)
	,`ctime` BIGINT DEFAULT 0	#[字段] 创建时间
	, PRIMARY KEY(id) 
	,INDEX `iid` (`iid` asc)	#[索引] 流水号
	,INDEX `walletId` (`walletId` asc)	#[索引] 钱包ID
	,INDEX `orderId` (`orderId` asc)	#[索引] 订单ID
	,INDEX `ctime` (`ctime` desc)	#[索引] 创建时间
 ) AUTO_INCREMENT = 1;
#钱包
CREATE TABLE IF NOT EXISTS `wallet_65_wallet` (
	id BIGINT NOT NULL	#ID
	,`value` BIGINT DEFAULT 0	#[字段] 余额(分)
	,`inValue` BIGINT DEFAULT 0	#[字段] 累计收入(分)
	,`outValue` BIGINT DEFAULT 0	#[字段] 累计支出(分)
	,`iid` BIGINT DEFAULT 0	#[字段] 最后流水号
	,`ctime` BIGINT DEFAULT 0	#[字段] 创建时间
	,`mtime` BIGINT DEFAULT 0	#[字段] 修改时间
	, PRIMARY KEY(id) 
 ) ;
#订单
CREATE TABLE IF NOT EXISTS `wallet_65_order` (
	id BIGINT NOT NULL	#ID
	,`fitemId` BIGINT DEFAULT 0	#[字段] 支出流水ID
	,`titemId` BIGINT DEFAULT 0	#[字段] 收入流水ID
	,`fwalletId` BIGINT DEFAULT 0	#[字段] 支出钱包ID
	,`twalletId` BIGINT DEFAULT 0	#[字段] 收入钱包ID
	,`value` BIGINT DEFAULT 0	#[字段] 交易金额(分)
	,`ctime` BIGINT DEFAULT 0	#[字段] 创建时间
	, PRIMARY KEY(id) 
 ) ;
#交易流水
CREATE TABLE IF NOT EXISTS `wallet_65_item` (
	id BIGINT NOT NULL AUTO_INCREMENT	#ID
	,`iid` BIGINT DEFAULT 0	#[字段] 流水号
	,`walletId` BIGINT DEFAULT 0	#[字段] 钱包ID
	,`orderId` BIGINT DEFAULT 0	#[字段] 订单ID
	,`walletValue` BIGINT DEFAULT 0	#[字段] 变更后余额(分)
	,`value` BIGINT DEFAULT 0	#[字段] 增加的余额(分)
	,`ctime` BIGINT DEFAULT 0	#[字段] 创建时间
	, PRIMARY KEY(id) 
	,INDEX `iid` (`iid` asc)	#[索引] 流水号
	,INDEX `walletId` (`walletId` asc)	#[索引] 钱包ID
	,INDEX `orderId` (`orderId` asc)	#[索引] 订单ID
	,INDEX `ctime` (`ctime` desc)	#[索引] 创建时间
 ) AUTO_INCREMENT = 1;
#钱包
CREATE TABLE IF NOT EXISTS `wallet_66_wallet` (
	id BIGINT NOT NULL	#ID
	,`value` BIGINT DEFAULT 0	#[字段] 余额(分)
	,`inValue` BIGINT DEFAULT 0	#[字段] 累计收入(分)
	,`outValue` BIGINT DEFAULT 0	#[字段] 累计支出(分)
	,`iid` BIGINT DEFAULT 0	#[字段] 最后流水号
	,`ctime` BIGINT DEFAULT 0	#[字段] 创建时间
	,`mtime` BIGINT DEFAULT 0	#[字段] 修改时间
	, PRIMARY KEY(id) 
 ) ;
#订单
CREATE TABLE IF NOT EXISTS `wallet_66_order` (
	id BIGINT NOT NULL	#ID
	,`fitemId` BIGINT DEFAULT 0	#[字段] 支出流水ID
	,`titemId` BIGINT DEFAULT 0	#[字段] 收入流水ID
	,`fwalletId` BIGINT DEFAULT 0	#[字段] 支出钱包ID
	,`twalletId` BIGINT DEFAULT 0	#[字段] 收入钱包ID
	,`value` BIGINT DEFAULT 0	#[字段] 交易金额(分)
	,`ctime` BIGINT DEFAULT 0	#[字段] 创建时间
	, PRIMARY KEY(id) 
 ) ;
#交易流水
CREATE TABLE IF NOT EXISTS `wallet_66_item` (
	id BIGINT NOT NULL AUTO_INCREMENT	#ID
	,`iid` BIGINT DEFAULT 0	#[字段] 流水号
	,`walletId` BIGINT DEFAULT 0	#[字段] 钱包ID
	,`orderId` BIGINT DEFAULT 0	#[字段] 订单ID
	,`walletValue` BIGINT DEFAULT 0	#[字段] 变更后余额(分)
	,`value` BIGINT DEFAULT 0	#[字段] 增加的余额(分)
	,`ctime` BIGINT DEFAULT 0	#[字段] 创建时间
	, PRIMARY KEY(id) 
	,INDEX `iid` (`iid` asc)	#[索引] 流水号
	,INDEX `walletId` (`walletId` asc)	#[索引] 钱包ID
	,INDEX `orderId` (`orderId` asc)	#[索引] 订单ID
	,INDEX `ctime` (`ctime` desc)	#[索引] 创建时间
 ) AUTO_INCREMENT = 1;
#钱包
CREATE TABLE IF NOT EXISTS `wallet_67_wallet` (
	id BIGINT NOT NULL	#ID
	,`value` BIGINT DEFAULT 0	#[字段] 余额(分)
	,`inValue` BIGINT DEFAULT 0	#[字段] 累计收入(分)
	,`outValue` BIGINT DEFAULT 0	#[字段] 累计支出(分)
	,`iid` BIGINT DEFAULT 0	#[字段] 最后流水号
	,`ctime` BIGINT DEFAULT 0	#[字段] 创建时间
	,`mtime` BIGINT DEFAULT 0	#[字段] 修改时间
	, PRIMARY KEY(id) 
 ) ;
#订单
CREATE TABLE IF NOT EXISTS `wallet_67_order` (
	id BIGINT NOT NULL	#ID
	,`fitemId` BIGINT DEFAULT 0	#[字段] 支出流水ID
	,`titemId` BIGINT DEFAULT 0	#[字段] 收入流水ID
	,`fwalletId` BIGINT DEFAULT 0	#[字段] 支出钱包ID
	,`twalletId` BIGINT DEFAULT 0	#[字段] 收入钱包ID
	,`value` BIGINT DEFAULT 0	#[字段] 交易金额(分)
	,`ctime` BIGINT DEFAULT 0	#[字段] 创建时间
	, PRIMARY KEY(id) 
 ) ;
#交易流水
CREATE TABLE IF NOT EXISTS `wallet_67_item` (
	id BIGINT NOT NULL AUTO_INCREMENT	#ID
	,`iid` BIGINT DEFAULT 0	#[字段] 流水号
	,`walletId` BIGINT DEFAULT 0	#[字段] 钱包ID
	,`orderId` BIGINT DEFAULT 0	#[字段] 订单ID
	,`walletValue` BIGINT DEFAULT 0	#[字段] 变更后余额(分)
	,`value` BIGINT DEFAULT 0	#[字段] 增加的余额(分)
	,`ctime` BIGINT DEFAULT 0	#[字段] 创建时间
	, PRIMARY KEY(id) 
	,INDEX `iid` (`iid` asc)	#[索引] 流水号
	,INDEX `walletId` (`walletId` asc)	#[索引] 钱包ID
	,INDEX `orderId` (`orderId` asc)	#[索引] 订单ID
	,INDEX `ctime` (`ctime` desc)	#[索引] 创建时间
 ) AUTO_INCREMENT = 1;
#钱包
CREATE TABLE IF NOT EXISTS `wallet_68_wallet` (
	id BIGINT NOT NULL	#ID
	,`value` BIGINT DEFAULT 0	#[字段] 余额(分)
	,`inValue` BIGINT DEFAULT 0	#[字段] 累计收入(分)
	,`outValue` BIGINT DEFAULT 0	#[字段] 累计支出(分)
	,`iid` BIGINT DEFAULT 0	#[字段] 最后流水号
	,`ctime` BIGINT DEFAULT 0	#[字段] 创建时间
	,`mtime` BIGINT DEFAULT 0	#[字段] 修改时间
	, PRIMARY KEY(id) 
 ) ;
#订单
CREATE TABLE IF NOT EXISTS `wallet_68_order` (
	id BIGINT NOT NULL	#ID
	,`fitemId` BIGINT DEFAULT 0	#[字段] 支出流水ID
	,`titemId` BIGINT DEFAULT 0	#[字段] 收入流水ID
	,`fwalletId` BIGINT DEFAULT 0	#[字段] 支出钱包ID
	,`twalletId` BIGINT DEFAULT 0	#[字段] 收入钱包ID
	,`value` BIGINT DEFAULT 0	#[字段] 交易金额(分)
	,`ctime` BIGINT DEFAULT 0	#[字段] 创建时间
	, PRIMARY KEY(id) 
 ) ;
#交易流水
CREATE TABLE IF NOT EXISTS `wallet_68_item` (
	id BIGINT NOT NULL AUTO_INCREMENT	#ID
	,`iid` BIGINT DEFAULT 0	#[字段] 流水号
	,`walletId` BIGINT DEFAULT 0	#[字段] 钱包ID
	,`orderId` BIGINT DEFAULT 0	#[字段] 订单ID
	,`walletValue` BIGINT DEFAULT 0	#[字段] 变更后余额(分)
	,`value` BIGINT DEFAULT 0	#[字段] 增加的余额(分)
	,`ctime` BIGINT DEFAULT 0	#[字段] 创建时间
	, PRIMARY KEY(id) 
	,INDEX `iid` (`iid` asc)	#[索引] 流水号
	,INDEX `walletId` (`walletId` asc)	#[索引] 钱包ID
	,INDEX `orderId` (`orderId` asc)	#[索引] 订单ID
	,INDEX `ctime` (`ctime` desc)	#[索引] 创建时间
 ) AUTO_INCREMENT = 1;
#钱包
CREATE TABLE IF NOT EXISTS `wallet_69_wallet` (
	id BIGINT NOT NULL	#ID
	,`value` BIGINT DEFAULT 0	#[字段] 余额(分)
	,`inValue` BIGINT DEFAULT 0	#[字段] 累计收入(分)
	,`outValue` BIGINT DEFAULT 0	#[字段] 累计支出(分)
	,`iid` BIGINT DEFAULT 0	#[字段] 最后流水号
	,`ctime` BIGINT DEFAULT 0	#[字段] 创建时间
	,`mtime` BIGINT DEFAULT 0	#[字段] 修改时间
	, PRIMARY KEY(id) 
 ) ;
#订单
CREATE TABLE IF NOT EXISTS `wallet_69_order` (
	id BIGINT NOT NULL	#ID
	,`fitemId` BIGINT DEFAULT 0	#[字段] 支出流水ID
	,`titemId` BIGINT DEFAULT 0	#[字段] 收入流水ID
	,`fwalletId` BIGINT DEFAULT 0	#[字段] 支出钱包ID
	,`twalletId` BIGINT DEFAULT 0	#[字段] 收入钱包ID
	,`value` BIGINT DEFAULT 0	#[字段] 交易金额(分)
	,`ctime` BIGINT DEFAULT 0	#[字段] 创建时间
	, PRIMARY KEY(id) 
 ) ;
#交易流水
CREATE TABLE IF NOT EXISTS `wallet_69_item` (
	id BIGINT NOT NULL AUTO_INCREMENT	#ID
	,`iid` BIGINT DEFAULT 0	#[字段] 流水号
	,`walletId` BIGINT DEFAULT 0	#[字段] 钱包ID
	,`orderId` BIGINT DEFAULT 0	#[字段] 订单ID
	,`walletValue` BIGINT DEFAULT 0	#[字段] 变更后余额(分)
	,`value` BIGINT DEFAULT 0	#[字段] 增加的余额(分)
	,`ctime` BIGINT DEFAULT 0	#[字段] 创建时间
	, PRIMARY KEY(id) 
	,INDEX `iid` (`iid` asc)	#[索引] 流水号
	,INDEX `walletId` (`walletId` asc)	#[索引] 钱包ID
	,INDEX `orderId` (`orderId` asc)	#[索引] 订单ID
	,INDEX `ctime` (`ctime` desc)	#[索引] 创建时间
 ) AUTO_INCREMENT = 1;
#钱包
CREATE TABLE IF NOT EXISTS `wallet_70_wallet` (
	id BIGINT NOT NULL	#ID
	,`value` BIGINT DEFAULT 0	#[字段] 余额(分)
	,`inValue` BIGINT DEFAULT 0	#[字段] 累计收入(分)
	,`outValue` BIGINT DEFAULT 0	#[字段] 累计支出(分)
	,`iid` BIGINT DEFAULT 0	#[字段] 最后流水号
	,`ctime` BIGINT DEFAULT 0	#[字段] 创建时间
	,`mtime` BIGINT DEFAULT 0	#[字段] 修改时间
	, PRIMARY KEY(id) 
 ) ;
#订单
CREATE TABLE IF NOT EXISTS `wallet_70_order` (
	id BIGINT NOT NULL	#ID
	,`fitemId` BIGINT DEFAULT 0	#[字段] 支出流水ID
	,`titemId` BIGINT DEFAULT 0	#[字段] 收入流水ID
	,`fwalletId` BIGINT DEFAULT 0	#[字段] 支出钱包ID
	,`twalletId` BIGINT DEFAULT 0	#[字段] 收入钱包ID
	,`value` BIGINT DEFAULT 0	#[字段] 交易金额(分)
	,`ctime` BIGINT DEFAULT 0	#[字段] 创建时间
	, PRIMARY KEY(id) 
 ) ;
#交易流水
CREATE TABLE IF NOT EXISTS `wallet_70_item` (
	id BIGINT NOT NULL AUTO_INCREMENT	#ID
	,`iid` BIGINT DEFAULT 0	#[字段] 流水号
	,`walletId` BIGINT DEFAULT 0	#[字段] 钱包ID
	,`orderId` BIGINT DEFAULT 0	#[字段] 订单ID
	,`walletValue` BIGINT DEFAULT 0	#[字段] 变更后余额(分)
	,`value` BIGINT DEFAULT 0	#[字段] 增加的余额(分)
	,`ctime` BIGINT DEFAULT 0	#[字段] 创建时间
	, PRIMARY KEY(id) 
	,INDEX `iid` (`iid` asc)	#[索引] 流水号
	,INDEX `walletId` (`walletId` asc)	#[索引] 钱包ID
	,INDEX `orderId` (`orderId` asc)	#[索引] 订单ID
	,INDEX `ctime` (`ctime` desc)	#[索引] 创建时间
 ) AUTO_INCREMENT = 1;
#钱包
CREATE TABLE IF NOT EXISTS `wallet_71_wallet` (
	id BIGINT NOT NULL	#ID
	,`value` BIGINT DEFAULT 0	#[字段] 余额(分)
	,`inValue` BIGINT DEFAULT 0	#[字段] 累计收入(分)
	,`outValue` BIGINT DEFAULT 0	#[字段] 累计支出(分)
	,`iid` BIGINT DEFAULT 0	#[字段] 最后流水号
	,`ctime` BIGINT DEFAULT 0	#[字段] 创建时间
	,`mtime` BIGINT DEFAULT 0	#[字段] 修改时间
	, PRIMARY KEY(id) 
 ) ;
#订单
CREATE TABLE IF NOT EXISTS `wallet_71_order` (
	id BIGINT NOT NULL	#ID
	,`fitemId` BIGINT DEFAULT 0	#[字段] 支出流水ID
	,`titemId` BIGINT DEFAULT 0	#[字段] 收入流水ID
	,`fwalletId` BIGINT DEFAULT 0	#[字段] 支出钱包ID
	,`twalletId` BIGINT DEFAULT 0	#[字段] 收入钱包ID
	,`value` BIGINT DEFAULT 0	#[字段] 交易金额(分)
	,`ctime` BIGINT DEFAULT 0	#[字段] 创建时间
	, PRIMARY KEY(id) 
 ) ;
#交易流水
CREATE TABLE IF NOT EXISTS `wallet_71_item` (
	id BIGINT NOT NULL AUTO_INCREMENT	#ID
	,`iid` BIGINT DEFAULT 0	#[字段] 流水号
	,`walletId` BIGINT DEFAULT 0	#[字段] 钱包ID
	,`orderId` BIGINT DEFAULT 0	#[字段] 订单ID
	,`walletValue` BIGINT DEFAULT 0	#[字段] 变更后余额(分)
	,`value` BIGINT DEFAULT 0	#[字段] 增加的余额(分)
	,`ctime` BIGINT DEFAULT 0	#[字段] 创建时间
	, PRIMARY KEY(id) 
	,INDEX `iid` (`iid` asc)	#[索引] 流水号
	,INDEX `walletId` (`walletId` asc)	#[索引] 钱包ID
	,INDEX `orderId` (`orderId` asc)	#[索引] 订单ID
	,INDEX `ctime` (`ctime` desc)	#[索引] 创建时间
 ) AUTO_INCREMENT = 1;
#钱包
CREATE TABLE IF NOT EXISTS `wallet_72_wallet` (
	id BIGINT NOT NULL	#ID
	,`value` BIGINT DEFAULT 0	#[字段] 余额(分)
	,`inValue` BIGINT DEFAULT 0	#[字段] 累计收入(分)
	,`outValue` BIGINT DEFAULT 0	#[字段] 累计支出(分)
	,`iid` BIGINT DEFAULT 0	#[字段] 最后流水号
	,`ctime` BIGINT DEFAULT 0	#[字段] 创建时间
	,`mtime` BIGINT DEFAULT 0	#[字段] 修改时间
	, PRIMARY KEY(id) 
 ) ;
#订单
CREATE TABLE IF NOT EXISTS `wallet_72_order` (
	id BIGINT NOT NULL	#ID
	,`fitemId` BIGINT DEFAULT 0	#[字段] 支出流水ID
	,`titemId` BIGINT DEFAULT 0	#[字段] 收入流水ID
	,`fwalletId` BIGINT DEFAULT 0	#[字段] 支出钱包ID
	,`twalletId` BIGINT DEFAULT 0	#[字段] 收入钱包ID
	,`value` BIGINT DEFAULT 0	#[字段] 交易金额(分)
	,`ctime` BIGINT DEFAULT 0	#[字段] 创建时间
	, PRIMARY KEY(id) 
 ) ;
#交易流水
CREATE TABLE IF NOT EXISTS `wallet_72_item` (
	id BIGINT NOT NULL AUTO_INCREMENT	#ID
	,`iid` BIGINT DEFAULT 0	#[字段] 流水号
	,`walletId` BIGINT DEFAULT 0	#[字段] 钱包ID
	,`orderId` BIGINT DEFAULT 0	#[字段] 订单ID
	,`walletValue` BIGINT DEFAULT 0	#[字段] 变更后余额(分)
	,`value` BIGINT DEFAULT 0	#[字段] 增加的余额(分)
	,`ctime` BIGINT DEFAULT 0	#[字段] 创建时间
	, PRIMARY KEY(id) 
	,INDEX `iid` (`iid` asc)	#[索引] 流水号
	,INDEX `walletId` (`walletId` asc)	#[索引] 钱包ID
	,INDEX `orderId` (`orderId` asc)	#[索引] 订单ID
	,INDEX `ctime` (`ctime` desc)	#[索引] 创建时间
 ) AUTO_INCREMENT = 1;
#钱包
CREATE TABLE IF NOT EXISTS `wallet_73_wallet` (
	id BIGINT NOT NULL	#ID
	,`value` BIGINT DEFAULT 0	#[字段] 余额(分)
	,`inValue` BIGINT DEFAULT 0	#[字段] 累计收入(分)
	,`outValue` BIGINT DEFAULT 0	#[字段] 累计支出(分)
	,`iid` BIGINT DEFAULT 0	#[字段] 最后流水号
	,`ctime` BIGINT DEFAULT 0	#[字段] 创建时间
	,`mtime` BIGINT DEFAULT 0	#[字段] 修改时间
	, PRIMARY KEY(id) 
 ) ;
#订单
CREATE TABLE IF NOT EXISTS `wallet_73_order` (
	id BIGINT NOT NULL	#ID
	,`fitemId` BIGINT DEFAULT 0	#[字段] 支出流水ID
	,`titemId` BIGINT DEFAULT 0	#[字段] 收入流水ID
	,`fwalletId` BIGINT DEFAULT 0	#[字段] 支出钱包ID
	,`twalletId` BIGINT DEFAULT 0	#[字段] 收入钱包ID
	,`value` BIGINT DEFAULT 0	#[字段] 交易金额(分)
	,`ctime` BIGINT DEFAULT 0	#[字段] 创建时间
	, PRIMARY KEY(id) 
 ) ;
#交易流水
CREATE TABLE IF NOT EXISTS `wallet_73_item` (
	id BIGINT NOT NULL AUTO_INCREMENT	#ID
	,`iid` BIGINT DEFAULT 0	#[字段] 流水号
	,`walletId` BIGINT DEFAULT 0	#[字段] 钱包ID
	,`orderId` BIGINT DEFAULT 0	#[字段] 订单ID
	,`walletValue` BIGINT DEFAULT 0	#[字段] 变更后余额(分)
	,`value` BIGINT DEFAULT 0	#[字段] 增加的余额(分)
	,`ctime` BIGINT DEFAULT 0	#[字段] 创建时间
	, PRIMARY KEY(id) 
	,INDEX `iid` (`iid` asc)	#[索引] 流水号
	,INDEX `walletId` (`walletId` asc)	#[索引] 钱包ID
	,INDEX `orderId` (`orderId` asc)	#[索引] 订单ID
	,INDEX `ctime` (`ctime` desc)	#[索引] 创建时间
 ) AUTO_INCREMENT = 1;
#钱包
CREATE TABLE IF NOT EXISTS `wallet_74_wallet` (
	id BIGINT NOT NULL	#ID
	,`value` BIGINT DEFAULT 0	#[字段] 余额(分)
	,`inValue` BIGINT DEFAULT 0	#[字段] 累计收入(分)
	,`outValue` BIGINT DEFAULT 0	#[字段] 累计支出(分)
	,`iid` BIGINT DEFAULT 0	#[字段] 最后流水号
	,`ctime` BIGINT DEFAULT 0	#[字段] 创建时间
	,`mtime` BIGINT DEFAULT 0	#[字段] 修改时间
	, PRIMARY KEY(id) 
 ) ;
#订单
CREATE TABLE IF NOT EXISTS `wallet_74_order` (
	id BIGINT NOT NULL	#ID
	,`fitemId` BIGINT DEFAULT 0	#[字段] 支出流水ID
	,`titemId` BIGINT DEFAULT 0	#[字段] 收入流水ID
	,`fwalletId` BIGINT DEFAULT 0	#[字段] 支出钱包ID
	,`twalletId` BIGINT DEFAULT 0	#[字段] 收入钱包ID
	,`value` BIGINT DEFAULT 0	#[字段] 交易金额(分)
	,`ctime` BIGINT DEFAULT 0	#[字段] 创建时间
	, PRIMARY KEY(id) 
 ) ;
#交易流水
CREATE TABLE IF NOT EXISTS `wallet_74_item` (
	id BIGINT NOT NULL AUTO_INCREMENT	#ID
	,`iid` BIGINT DEFAULT 0	#[字段] 流水号
	,`walletId` BIGINT DEFAULT 0	#[字段] 钱包ID
	,`orderId` BIGINT DEFAULT 0	#[字段] 订单ID
	,`walletValue` BIGINT DEFAULT 0	#[字段] 变更后余额(分)
	,`value` BIGINT DEFAULT 0	#[字段] 增加的余额(分)
	,`ctime` BIGINT DEFAULT 0	#[字段] 创建时间
	, PRIMARY KEY(id) 
	,INDEX `iid` (`iid` asc)	#[索引] 流水号
	,INDEX `walletId` (`walletId` asc)	#[索引] 钱包ID
	,INDEX `orderId` (`orderId` asc)	#[索引] 订单ID
	,INDEX `ctime` (`ctime` desc)	#[索引] 创建时间
 ) AUTO_INCREMENT = 1;
#钱包
CREATE TABLE IF NOT EXISTS `wallet_75_wallet` (
	id BIGINT NOT NULL	#ID
	,`value` BIGINT DEFAULT 0	#[字段] 余额(分)
	,`inValue` BIGINT DEFAULT 0	#[字段] 累计收入(分)
	,`outValue` BIGINT DEFAULT 0	#[字段] 累计支出(分)
	,`iid` BIGINT DEFAULT 0	#[字段] 最后流水号
	,`ctime` BIGINT DEFAULT 0	#[字段] 创建时间
	,`mtime` BIGINT DEFAULT 0	#[字段] 修改时间
	, PRIMARY KEY(id) 
 ) ;
#订单
CREATE TABLE IF NOT EXISTS `wallet_75_order` (
	id BIGINT NOT NULL	#ID
	,`fitemId` BIGINT DEFAULT 0	#[字段] 支出流水ID
	,`titemId` BIGINT DEFAULT 0	#[字段] 收入流水ID
	,`fwalletId` BIGINT DEFAULT 0	#[字段] 支出钱包ID
	,`twalletId` BIGINT DEFAULT 0	#[字段] 收入钱包ID
	,`value` BIGINT DEFAULT 0	#[字段] 交易金额(分)
	,`ctime` BIGINT DEFAULT 0	#[字段] 创建时间
	, PRIMARY KEY(id) 
 ) ;
#交易流水
CREATE TABLE IF NOT EXISTS `wallet_75_item` (
	id BIGINT NOT NULL AUTO_INCREMENT	#ID
	,`iid` BIGINT DEFAULT 0	#[字段] 流水号
	,`walletId` BIGINT DEFAULT 0	#[字段] 钱包ID
	,`orderId` BIGINT DEFAULT 0	#[字段] 订单ID
	,`walletValue` BIGINT DEFAULT 0	#[字段] 变更后余额(分)
	,`value` BIGINT DEFAULT 0	#[字段] 增加的余额(分)
	,`ctime` BIGINT DEFAULT 0	#[字段] 创建时间
	, PRIMARY KEY(id) 
	,INDEX `iid` (`iid` asc)	#[索引] 流水号
	,INDEX `walletId` (`walletId` asc)	#[索引] 钱包ID
	,INDEX `orderId` (`orderId` asc)	#[索引] 订单ID
	,INDEX `ctime` (`ctime` desc)	#[索引] 创建时间
 ) AUTO_INCREMENT = 1;
#钱包
CREATE TABLE IF NOT EXISTS `wallet_76_wallet` (
	id BIGINT NOT NULL	#ID
	,`value` BIGINT DEFAULT 0	#[字段] 余额(分)
	,`inValue` BIGINT DEFAULT 0	#[字段] 累计收入(分)
	,`outValue` BIGINT DEFAULT 0	#[字段] 累计支出(分)
	,`iid` BIGINT DEFAULT 0	#[字段] 最后流水号
	,`ctime` BIGINT DEFAULT 0	#[字段] 创建时间
	,`mtime` BIGINT DEFAULT 0	#[字段] 修改时间
	, PRIMARY KEY(id) 
 ) ;
#订单
CREATE TABLE IF NOT EXISTS `wallet_76_order` (
	id BIGINT NOT NULL	#ID
	,`fitemId` BIGINT DEFAULT 0	#[字段] 支出流水ID
	,`titemId` BIGINT DEFAULT 0	#[字段] 收入流水ID
	,`fwalletId` BIGINT DEFAULT 0	#[字段] 支出钱包ID
	,`twalletId` BIGINT DEFAULT 0	#[字段] 收入钱包ID
	,`value` BIGINT DEFAULT 0	#[字段] 交易金额(分)
	,`ctime` BIGINT DEFAULT 0	#[字段] 创建时间
	, PRIMARY KEY(id) 
 ) ;
#交易流水
CREATE TABLE IF NOT EXISTS `wallet_76_item` (
	id BIGINT NOT NULL AUTO_INCREMENT	#ID
	,`iid` BIGINT DEFAULT 0	#[字段] 流水号
	,`walletId` BIGINT DEFAULT 0	#[字段] 钱包ID
	,`orderId` BIGINT DEFAULT 0	#[字段] 订单ID
	,`walletValue` BIGINT DEFAULT 0	#[字段] 变更后余额(分)
	,`value` BIGINT DEFAULT 0	#[字段] 增加的余额(分)
	,`ctime` BIGINT DEFAULT 0	#[字段] 创建时间
	, PRIMARY KEY(id) 
	,INDEX `iid` (`iid` asc)	#[索引] 流水号
	,INDEX `walletId` (`walletId` asc)	#[索引] 钱包ID
	,INDEX `orderId` (`orderId` asc)	#[索引] 订单ID
	,INDEX `ctime` (`ctime` desc)	#[索引] 创建时间
 ) AUTO_INCREMENT = 1;
#钱包
CREATE TABLE IF NOT EXISTS `wallet_77_wallet` (
	id BIGINT NOT NULL	#ID
	,`value` BIGINT DEFAULT 0	#[字段] 余额(分)
	,`inValue` BIGINT DEFAULT 0	#[字段] 累计收入(分)
	,`outValue` BIGINT DEFAULT 0	#[字段] 累计支出(分)
	,`iid` BIGINT DEFAULT 0	#[字段] 最后流水号
	,`ctime` BIGINT DEFAULT 0	#[字段] 创建时间
	,`mtime` BIGINT DEFAULT 0	#[字段] 修改时间
	, PRIMARY KEY(id) 
 ) ;
#订单
CREATE TABLE IF NOT EXISTS `wallet_77_order` (
	id BIGINT NOT NULL	#ID
	,`fitemId` BIGINT DEFAULT 0	#[字段] 支出流水ID
	,`titemId` BIGINT DEFAULT 0	#[字段] 收入流水ID
	,`fwalletId` BIGINT DEFAULT 0	#[字段] 支出钱包ID
	,`twalletId` BIGINT DEFAULT 0	#[字段] 收入钱包ID
	,`value` BIGINT DEFAULT 0	#[字段] 交易金额(分)
	,`ctime` BIGINT DEFAULT 0	#[字段] 创建时间
	, PRIMARY KEY(id) 
 ) ;
#交易流水
CREATE TABLE IF NOT EXISTS `wallet_77_item` (
	id BIGINT NOT NULL AUTO_INCREMENT	#ID
	,`iid` BIGINT DEFAULT 0	#[字段] 流水号
	,`walletId` BIGINT DEFAULT 0	#[字段] 钱包ID
	,`orderId` BIGINT DEFAULT 0	#[字段] 订单ID
	,`walletValue` BIGINT DEFAULT 0	#[字段] 变更后余额(分)
	,`value` BIGINT DEFAULT 0	#[字段] 增加的余额(分)
	,`ctime` BIGINT DEFAULT 0	#[字段] 创建时间
	, PRIMARY KEY(id) 
	,INDEX `iid` (`iid` asc)	#[索引] 流水号
	,INDEX `walletId` (`walletId` asc)	#[索引] 钱包ID
	,INDEX `orderId` (`orderId` asc)	#[索引] 订单ID
	,INDEX `ctime` (`ctime` desc)	#[索引] 创建时间
 ) AUTO_INCREMENT = 1;
#钱包
CREATE TABLE IF NOT EXISTS `wallet_78_wallet` (
	id BIGINT NOT NULL	#ID
	,`value` BIGINT DEFAULT 0	#[字段] 余额(分)
	,`inValue` BIGINT DEFAULT 0	#[字段] 累计收入(分)
	,`outValue` BIGINT DEFAULT 0	#[字段] 累计支出(分)
	,`iid` BIGINT DEFAULT 0	#[字段] 最后流水号
	,`ctime` BIGINT DEFAULT 0	#[字段] 创建时间
	,`mtime` BIGINT DEFAULT 0	#[字段] 修改时间
	, PRIMARY KEY(id) 
 ) ;
#订单
CREATE TABLE IF NOT EXISTS `wallet_78_order` (
	id BIGINT NOT NULL	#ID
	,`fitemId` BIGINT DEFAULT 0	#[字段] 支出流水ID
	,`titemId` BIGINT DEFAULT 0	#[字段] 收入流水ID
	,`fwalletId` BIGINT DEFAULT 0	#[字段] 支出钱包ID
	,`twalletId` BIGINT DEFAULT 0	#[字段] 收入钱包ID
	,`value` BIGINT DEFAULT 0	#[字段] 交易金额(分)
	,`ctime` BIGINT DEFAULT 0	#[字段] 创建时间
	, PRIMARY KEY(id) 
 ) ;
#交易流水
CREATE TABLE IF NOT EXISTS `wallet_78_item` (
	id BIGINT NOT NULL AUTO_INCREMENT	#ID
	,`iid` BIGINT DEFAULT 0	#[字段] 流水号
	,`walletId` BIGINT DEFAULT 0	#[字段] 钱包ID
	,`orderId` BIGINT DEFAULT 0	#[字段] 订单ID
	,`walletValue` BIGINT DEFAULT 0	#[字段] 变更后余额(分)
	,`value` BIGINT DEFAULT 0	#[字段] 增加的余额(分)
	,`ctime` BIGINT DEFAULT 0	#[字段] 创建时间
	, PRIMARY KEY(id) 
	,INDEX `iid` (`iid` asc)	#[索引] 流水号
	,INDEX `walletId` (`walletId` asc)	#[索引] 钱包ID
	,INDEX `orderId` (`orderId` asc)	#[索引] 订单ID
	,INDEX `ctime` (`ctime` desc)	#[索引] 创建时间
 ) AUTO_INCREMENT = 1;
#钱包
CREATE TABLE IF NOT EXISTS `wallet_79_wallet` (
	id BIGINT NOT NULL	#ID
	,`value` BIGINT DEFAULT 0	#[字段] 余额(分)
	,`inValue` BIGINT DEFAULT 0	#[字段] 累计收入(分)
	,`outValue` BIGINT DEFAULT 0	#[字段] 累计支出(分)
	,`iid` BIGINT DEFAULT 0	#[字段] 最后流水号
	,`ctime` BIGINT DEFAULT 0	#[字段] 创建时间
	,`mtime` BIGINT DEFAULT 0	#[字段] 修改时间
	, PRIMARY KEY(id) 
 ) ;
#订单
CREATE TABLE IF NOT EXISTS `wallet_79_order` (
	id BIGINT NOT NULL	#ID
	,`fitemId` BIGINT DEFAULT 0	#[字段] 支出流水ID
	,`titemId` BIGINT DEFAULT 0	#[字段] 收入流水ID
	,`fwalletId` BIGINT DEFAULT 0	#[字段] 支出钱包ID
	,`twalletId` BIGINT DEFAULT 0	#[字段] 收入钱包ID
	,`value` BIGINT DEFAULT 0	#[字段] 交易金额(分)
	,`ctime` BIGINT DEFAULT 0	#[字段] 创建时间
	, PRIMARY KEY(id) 
 ) ;
#交易流水
CREATE TABLE IF NOT EXISTS `wallet_79_item` (
	id BIGINT NOT NULL AUTO_INCREMENT	#ID
	,`iid` BIGINT DEFAULT 0	#[字段] 流水号
	,`walletId` BIGINT DEFAULT 0	#[字段] 钱包ID
	,`orderId` BIGINT DEFAULT 0	#[字段] 订单ID
	,`walletValue` BIGINT DEFAULT 0	#[字段] 变更后余额(分)
	,`value` BIGINT DEFAULT 0	#[字段] 增加的余额(分)
	,`ctime` BIGINT DEFAULT 0	#[字段] 创建时间
	, PRIMARY KEY(id) 
	,INDEX `iid` (`iid` asc)	#[索引] 流水号
	,INDEX `walletId` (`walletId` asc)	#[索引] 钱包ID
	,INDEX `orderId` (`orderId` asc)	#[索引] 订单ID
	,INDEX `ctime` (`ctime` desc)	#[索引] 创建时间
 ) AUTO_INCREMENT = 1;
#钱包
CREATE TABLE IF NOT EXISTS `wallet_80_wallet` (
	id BIGINT NOT NULL	#ID
	,`value` BIGINT DEFAULT 0	#[字段] 余额(分)
	,`inValue` BIGINT DEFAULT 0	#[字段] 累计收入(分)
	,`outValue` BIGINT DEFAULT 0	#[字段] 累计支出(分)
	,`iid` BIGINT DEFAULT 0	#[字段] 最后流水号
	,`ctime` BIGINT DEFAULT 0	#[字段] 创建时间
	,`mtime` BIGINT DEFAULT 0	#[字段] 修改时间
	, PRIMARY KEY(id) 
 ) ;
#订单
CREATE TABLE IF NOT EXISTS `wallet_80_order` (
	id BIGINT NOT NULL	#ID
	,`fitemId` BIGINT DEFAULT 0	#[字段] 支出流水ID
	,`titemId` BIGINT DEFAULT 0	#[字段] 收入流水ID
	,`fwalletId` BIGINT DEFAULT 0	#[字段] 支出钱包ID
	,`twalletId` BIGINT DEFAULT 0	#[字段] 收入钱包ID
	,`value` BIGINT DEFAULT 0	#[字段] 交易金额(分)
	,`ctime` BIGINT DEFAULT 0	#[字段] 创建时间
	, PRIMARY KEY(id) 
 ) ;
#交易流水
CREATE TABLE IF NOT EXISTS `wallet_80_item` (
	id BIGINT NOT NULL AUTO_INCREMENT	#ID
	,`iid` BIGINT DEFAULT 0	#[字段] 流水号
	,`walletId` BIGINT DEFAULT 0	#[字段] 钱包ID
	,`orderId` BIGINT DEFAULT 0	#[字段] 订单ID
	,`walletValue` BIGINT DEFAULT 0	#[字段] 变更后余额(分)
	,`value` BIGINT DEFAULT 0	#[字段] 增加的余额(分)
	,`ctime` BIGINT DEFAULT 0	#[字段] 创建时间
	, PRIMARY KEY(id) 
	,INDEX `iid` (`iid` asc)	#[索引] 流水号
	,INDEX `walletId` (`walletId` asc)	#[索引] 钱包ID
	,INDEX `orderId` (`orderId` asc)	#[索引] 订单ID
	,INDEX `ctime` (`ctime` desc)	#[索引] 创建时间
 ) AUTO_INCREMENT = 1;
#钱包
CREATE TABLE IF NOT EXISTS `wallet_81_wallet` (
	id BIGINT NOT NULL	#ID
	,`value` BIGINT DEFAULT 0	#[字段] 余额(分)
	,`inValue` BIGINT DEFAULT 0	#[字段] 累计收入(分)
	,`outValue` BIGINT DEFAULT 0	#[字段] 累计支出(分)
	,`iid` BIGINT DEFAULT 0	#[字段] 最后流水号
	,`ctime` BIGINT DEFAULT 0	#[字段] 创建时间
	,`mtime` BIGINT DEFAULT 0	#[字段] 修改时间
	, PRIMARY KEY(id) 
 ) ;
#订单
CREATE TABLE IF NOT EXISTS `wallet_81_order` (
	id BIGINT NOT NULL	#ID
	,`fitemId` BIGINT DEFAULT 0	#[字段] 支出流水ID
	,`titemId` BIGINT DEFAULT 0	#[字段] 收入流水ID
	,`fwalletId` BIGINT DEFAULT 0	#[字段] 支出钱包ID
	,`twalletId` BIGINT DEFAULT 0	#[字段] 收入钱包ID
	,`value` BIGINT DEFAULT 0	#[字段] 交易金额(分)
	,`ctime` BIGINT DEFAULT 0	#[字段] 创建时间
	, PRIMARY KEY(id) 
 ) ;
#交易流水
CREATE TABLE IF NOT EXISTS `wallet_81_item` (
	id BIGINT NOT NULL AUTO_INCREMENT	#ID
	,`iid` BIGINT DEFAULT 0	#[字段] 流水号
	,`walletId` BIGINT DEFAULT 0	#[字段] 钱包ID
	,`orderId` BIGINT DEFAULT 0	#[字段] 订单ID
	,`walletValue` BIGINT DEFAULT 0	#[字段] 变更后余额(分)
	,`value` BIGINT DEFAULT 0	#[字段] 增加的余额(分)
	,`ctime` BIGINT DEFAULT 0	#[字段] 创建时间
	, PRIMARY KEY(id) 
	,INDEX `iid` (`iid` asc)	#[索引] 流水号
	,INDEX `walletId` (`walletId` asc)	#[索引] 钱包ID
	,INDEX `orderId` (`orderId` asc)	#[索引] 订单ID
	,INDEX `ctime` (`ctime` desc)	#[索引] 创建时间
 ) AUTO_INCREMENT = 1;
#钱包
CREATE TABLE IF NOT EXISTS `wallet_82_wallet` (
	id BIGINT NOT NULL	#ID
	,`value` BIGINT DEFAULT 0	#[字段] 余额(分)
	,`inValue` BIGINT DEFAULT 0	#[字段] 累计收入(分)
	,`outValue` BIGINT DEFAULT 0	#[字段] 累计支出(分)
	,`iid` BIGINT DEFAULT 0	#[字段] 最后流水号
	,`ctime` BIGINT DEFAULT 0	#[字段] 创建时间
	,`mtime` BIGINT DEFAULT 0	#[字段] 修改时间
	, PRIMARY KEY(id) 
 ) ;
#订单
CREATE TABLE IF NOT EXISTS `wallet_82_order` (
	id BIGINT NOT NULL	#ID
	,`fitemId` BIGINT DEFAULT 0	#[字段] 支出流水ID
	,`titemId` BIGINT DEFAULT 0	#[字段] 收入流水ID
	,`fwalletId` BIGINT DEFAULT 0	#[字段] 支出钱包ID
	,`twalletId` BIGINT DEFAULT 0	#[字段] 收入钱包ID
	,`value` BIGINT DEFAULT 0	#[字段] 交易金额(分)
	,`ctime` BIGINT DEFAULT 0	#[字段] 创建时间
	, PRIMARY KEY(id) 
 ) ;
#交易流水
CREATE TABLE IF NOT EXISTS `wallet_82_item` (
	id BIGINT NOT NULL AUTO_INCREMENT	#ID
	,`iid` BIGINT DEFAULT 0	#[字段] 流水号
	,`walletId` BIGINT DEFAULT 0	#[字段] 钱包ID
	,`orderId` BIGINT DEFAULT 0	#[字段] 订单ID
	,`walletValue` BIGINT DEFAULT 0	#[字段] 变更后余额(分)
	,`value` BIGINT DEFAULT 0	#[字段] 增加的余额(分)
	,`ctime` BIGINT DEFAULT 0	#[字段] 创建时间
	, PRIMARY KEY(id) 
	,INDEX `iid` (`iid` asc)	#[索引] 流水号
	,INDEX `walletId` (`walletId` asc)	#[索引] 钱包ID
	,INDEX `orderId` (`orderId` asc)	#[索引] 订单ID
	,INDEX `ctime` (`ctime` desc)	#[索引] 创建时间
 ) AUTO_INCREMENT = 1;
#钱包
CREATE TABLE IF NOT EXISTS `wallet_83_wallet` (
	id BIGINT NOT NULL	#ID
	,`value` BIGINT DEFAULT 0	#[字段] 余额(分)
	,`inValue` BIGINT DEFAULT 0	#[字段] 累计收入(分)
	,`outValue` BIGINT DEFAULT 0	#[字段] 累计支出(分)
	,`iid` BIGINT DEFAULT 0	#[字段] 最后流水号
	,`ctime` BIGINT DEFAULT 0	#[字段] 创建时间
	,`mtime` BIGINT DEFAULT 0	#[字段] 修改时间
	, PRIMARY KEY(id) 
 ) ;
#订单
CREATE TABLE IF NOT EXISTS `wallet_83_order` (
	id BIGINT NOT NULL	#ID
	,`fitemId` BIGINT DEFAULT 0	#[字段] 支出流水ID
	,`titemId` BIGINT DEFAULT 0	#[字段] 收入流水ID
	,`fwalletId` BIGINT DEFAULT 0	#[字段] 支出钱包ID
	,`twalletId` BIGINT DEFAULT 0	#[字段] 收入钱包ID
	,`value` BIGINT DEFAULT 0	#[字段] 交易金额(分)
	,`ctime` BIGINT DEFAULT 0	#[字段] 创建时间
	, PRIMARY KEY(id) 
 ) ;
#交易流水
CREATE TABLE IF NOT EXISTS `wallet_83_item` (
	id BIGINT NOT NULL AUTO_INCREMENT	#ID
	,`iid` BIGINT DEFAULT 0	#[字段] 流水号
	,`walletId` BIGINT DEFAULT 0	#[字段] 钱包ID
	,`orderId` BIGINT DEFAULT 0	#[字段] 订单ID
	,`walletValue` BIGINT DEFAULT 0	#[字段] 变更后余额(分)
	,`value` BIGINT DEFAULT 0	#[字段] 增加的余额(分)
	,`ctime` BIGINT DEFAULT 0	#[字段] 创建时间
	, PRIMARY KEY(id) 
	,INDEX `iid` (`iid` asc)	#[索引] 流水号
	,INDEX `walletId` (`walletId` asc)	#[索引] 钱包ID
	,INDEX `orderId` (`orderId` asc)	#[索引] 订单ID
	,INDEX `ctime` (`ctime` desc)	#[索引] 创建时间
 ) AUTO_INCREMENT = 1;
#钱包
CREATE TABLE IF NOT EXISTS `wallet_84_wallet` (
	id BIGINT NOT NULL	#ID
	,`value` BIGINT DEFAULT 0	#[字段] 余额(分)
	,`inValue` BIGINT DEFAULT 0	#[字段] 累计收入(分)
	,`outValue` BIGINT DEFAULT 0	#[字段] 累计支出(分)
	,`iid` BIGINT DEFAULT 0	#[字段] 最后流水号
	,`ctime` BIGINT DEFAULT 0	#[字段] 创建时间
	,`mtime` BIGINT DEFAULT 0	#[字段] 修改时间
	, PRIMARY KEY(id) 
 ) ;
#订单
CREATE TABLE IF NOT EXISTS `wallet_84_order` (
	id BIGINT NOT NULL	#ID
	,`fitemId` BIGINT DEFAULT 0	#[字段] 支出流水ID
	,`titemId` BIGINT DEFAULT 0	#[字段] 收入流水ID
	,`fwalletId` BIGINT DEFAULT 0	#[字段] 支出钱包ID
	,`twalletId` BIGINT DEFAULT 0	#[字段] 收入钱包ID
	,`value` BIGINT DEFAULT 0	#[字段] 交易金额(分)
	,`ctime` BIGINT DEFAULT 0	#[字段] 创建时间
	, PRIMARY KEY(id) 
 ) ;
#交易流水
CREATE TABLE IF NOT EXISTS `wallet_84_item` (
	id BIGINT NOT NULL AUTO_INCREMENT	#ID
	,`iid` BIGINT DEFAULT 0	#[字段] 流水号
	,`walletId` BIGINT DEFAULT 0	#[字段] 钱包ID
	,`orderId` BIGINT DEFAULT 0	#[字段] 订单ID
	,`walletValue` BIGINT DEFAULT 0	#[字段] 变更后余额(分)
	,`value` BIGINT DEFAULT 0	#[字段] 增加的余额(分)
	,`ctime` BIGINT DEFAULT 0	#[字段] 创建时间
	, PRIMARY KEY(id) 
	,INDEX `iid` (`iid` asc)	#[索引] 流水号
	,INDEX `walletId` (`walletId` asc)	#[索引] 钱包ID
	,INDEX `orderId` (`orderId` asc)	#[索引] 订单ID
	,INDEX `ctime` (`ctime` desc)	#[索引] 创建时间
 ) AUTO_INCREMENT = 1;
#钱包
CREATE TABLE IF NOT EXISTS `wallet_85_wallet` (
	id BIGINT NOT NULL	#ID
	,`value` BIGINT DEFAULT 0	#[字段] 余额(分)
	,`inValue` BIGINT DEFAULT 0	#[字段] 累计收入(分)
	,`outValue` BIGINT DEFAULT 0	#[字段] 累计支出(分)
	,`iid` BIGINT DEFAULT 0	#[字段] 最后流水号
	,`ctime` BIGINT DEFAULT 0	#[字段] 创建时间
	,`mtime` BIGINT DEFAULT 0	#[字段] 修改时间
	, PRIMARY KEY(id) 
 ) ;
#订单
CREATE TABLE IF NOT EXISTS `wallet_85_order` (
	id BIGINT NOT NULL	#ID
	,`fitemId` BIGINT DEFAULT 0	#[字段] 支出流水ID
	,`titemId` BIGINT DEFAULT 0	#[字段] 收入流水ID
	,`fwalletId` BIGINT DEFAULT 0	#[字段] 支出钱包ID
	,`twalletId` BIGINT DEFAULT 0	#[字段] 收入钱包ID
	,`value` BIGINT DEFAULT 0	#[字段] 交易金额(分)
	,`ctime` BIGINT DEFAULT 0	#[字段] 创建时间
	, PRIMARY KEY(id) 
 ) ;
#交易流水
CREATE TABLE IF NOT EXISTS `wallet_85_item` (
	id BIGINT NOT NULL AUTO_INCREMENT	#ID
	,`iid` BIGINT DEFAULT 0	#[字段] 流水号
	,`walletId` BIGINT DEFAULT 0	#[字段] 钱包ID
	,`orderId` BIGINT DEFAULT 0	#[字段] 订单ID
	,`walletValue` BIGINT DEFAULT 0	#[字段] 变更后余额(分)
	,`value` BIGINT DEFAULT 0	#[字段] 增加的余额(分)
	,`ctime` BIGINT DEFAULT 0	#[字段] 创建时间
	, PRIMARY KEY(id) 
	,INDEX `iid` (`iid` asc)	#[索引] 流水号
	,INDEX `walletId` (`walletId` asc)	#[索引] 钱包ID
	,INDEX `orderId` (`orderId` asc)	#[索引] 订单ID
	,INDEX `ctime` (`ctime` desc)	#[索引] 创建时间
 ) AUTO_INCREMENT = 1;
#钱包
CREATE TABLE IF NOT EXISTS `wallet_86_wallet` (
	id BIGINT NOT NULL	#ID
	,`value` BIGINT DEFAULT 0	#[字段] 余额(分)
	,`inValue` BIGINT DEFAULT 0	#[字段] 累计收入(分)
	,`outValue` BIGINT DEFAULT 0	#[字段] 累计支出(分)
	,`iid` BIGINT DEFAULT 0	#[字段] 最后流水号
	,`ctime` BIGINT DEFAULT 0	#[字段] 创建时间
	,`mtime` BIGINT DEFAULT 0	#[字段] 修改时间
	, PRIMARY KEY(id) 
 ) ;
#订单
CREATE TABLE IF NOT EXISTS `wallet_86_order` (
	id BIGINT NOT NULL	#ID
	,`fitemId` BIGINT DEFAULT 0	#[字段] 支出流水ID
	,`titemId` BIGINT DEFAULT 0	#[字段] 收入流水ID
	,`fwalletId` BIGINT DEFAULT 0	#[字段] 支出钱包ID
	,`twalletId` BIGINT DEFAULT 0	#[字段] 收入钱包ID
	,`value` BIGINT DEFAULT 0	#[字段] 交易金额(分)
	,`ctime` BIGINT DEFAULT 0	#[字段] 创建时间
	, PRIMARY KEY(id) 
 ) ;
#交易流水
CREATE TABLE IF NOT EXISTS `wallet_86_item` (
	id BIGINT NOT NULL AUTO_INCREMENT	#ID
	,`iid` BIGINT DEFAULT 0	#[字段] 流水号
	,`walletId` BIGINT DEFAULT 0	#[字段] 钱包ID
	,`orderId` BIGINT DEFAULT 0	#[字段] 订单ID
	,`walletValue` BIGINT DEFAULT 0	#[字段] 变更后余额(分)
	,`value` BIGINT DEFAULT 0	#[字段] 增加的余额(分)
	,`ctime` BIGINT DEFAULT 0	#[字段] 创建时间
	, PRIMARY KEY(id) 
	,INDEX `iid` (`iid` asc)	#[索引] 流水号
	,INDEX `walletId` (`walletId` asc)	#[索引] 钱包ID
	,INDEX `orderId` (`orderId` asc)	#[索引] 订单ID
	,INDEX `ctime` (`ctime` desc)	#[索引] 创建时间
 ) AUTO_INCREMENT = 1;
#钱包
CREATE TABLE IF NOT EXISTS `wallet_87_wallet` (
	id BIGINT NOT NULL	#ID
	,`value` BIGINT DEFAULT 0	#[字段] 余额(分)
	,`inValue` BIGINT DEFAULT 0	#[字段] 累计收入(分)
	,`outValue` BIGINT DEFAULT 0	#[字段] 累计支出(分)
	,`iid` BIGINT DEFAULT 0	#[字段] 最后流水号
	,`ctime` BIGINT DEFAULT 0	#[字段] 创建时间
	,`mtime` BIGINT DEFAULT 0	#[字段] 修改时间
	, PRIMARY KEY(id) 
 ) ;
#订单
CREATE TABLE IF NOT EXISTS `wallet_87_order` (
	id BIGINT NOT NULL	#ID
	,`fitemId` BIGINT DEFAULT 0	#[字段] 支出流水ID
	,`titemId` BIGINT DEFAULT 0	#[字段] 收入流水ID
	,`fwalletId` BIGINT DEFAULT 0	#[字段] 支出钱包ID
	,`twalletId` BIGINT DEFAULT 0	#[字段] 收入钱包ID
	,`value` BIGINT DEFAULT 0	#[字段] 交易金额(分)
	,`ctime` BIGINT DEFAULT 0	#[字段] 创建时间
	, PRIMARY KEY(id) 
 ) ;
#交易流水
CREATE TABLE IF NOT EXISTS `wallet_87_item` (
	id BIGINT NOT NULL AUTO_INCREMENT	#ID
	,`iid` BIGINT DEFAULT 0	#[字段] 流水号
	,`walletId` BIGINT DEFAULT 0	#[字段] 钱包ID
	,`orderId` BIGINT DEFAULT 0	#[字段] 订单ID
	,`walletValue` BIGINT DEFAULT 0	#[字段] 变更后余额(分)
	,`value` BIGINT DEFAULT 0	#[字段] 增加的余额(分)
	,`ctime` BIGINT DEFAULT 0	#[字段] 创建时间
	, PRIMARY KEY(id) 
	,INDEX `iid` (`iid` asc)	#[索引] 流水号
	,INDEX `walletId` (`walletId` asc)	#[索引] 钱包ID
	,INDEX `orderId` (`orderId` asc)	#[索引] 订单ID
	,INDEX `ctime` (`ctime` desc)	#[索引] 创建时间
 ) AUTO_INCREMENT = 1;
#钱包
CREATE TABLE IF NOT EXISTS `wallet_88_wallet` (
	id BIGINT NOT NULL	#ID
	,`value` BIGINT DEFAULT 0	#[字段] 余额(分)
	,`inValue` BIGINT DEFAULT 0	#[字段] 累计收入(分)
	,`outValue` BIGINT DEFAULT 0	#[字段] 累计支出(分)
	,`iid` BIGINT DEFAULT 0	#[字段] 最后流水号
	,`ctime` BIGINT DEFAULT 0	#[字段] 创建时间
	,`mtime` BIGINT DEFAULT 0	#[字段] 修改时间
	, PRIMARY KEY(id) 
 ) ;
#订单
CREATE TABLE IF NOT EXISTS `wallet_88_order` (
	id BIGINT NOT NULL	#ID
	,`fitemId` BIGINT DEFAULT 0	#[字段] 支出流水ID
	,`titemId` BIGINT DEFAULT 0	#[字段] 收入流水ID
	,`fwalletId` BIGINT DEFAULT 0	#[字段] 支出钱包ID
	,`twalletId` BIGINT DEFAULT 0	#[字段] 收入钱包ID
	,`value` BIGINT DEFAULT 0	#[字段] 交易金额(分)
	,`ctime` BIGINT DEFAULT 0	#[字段] 创建时间
	, PRIMARY KEY(id) 
 ) ;
#交易流水
CREATE TABLE IF NOT EXISTS `wallet_88_item` (
	id BIGINT NOT NULL AUTO_INCREMENT	#ID
	,`iid` BIGINT DEFAULT 0	#[字段] 流水号
	,`walletId` BIGINT DEFAULT 0	#[字段] 钱包ID
	,`orderId` BIGINT DEFAULT 0	#[字段] 订单ID
	,`walletValue` BIGINT DEFAULT 0	#[字段] 变更后余额(分)
	,`value` BIGINT DEFAULT 0	#[字段] 增加的余额(分)
	,`ctime` BIGINT DEFAULT 0	#[字段] 创建时间
	, PRIMARY KEY(id) 
	,INDEX `iid` (`iid` asc)	#[索引] 流水号
	,INDEX `walletId` (`walletId` asc)	#[索引] 钱包ID
	,INDEX `orderId` (`orderId` asc)	#[索引] 订单ID
	,INDEX `ctime` (`ctime` desc)	#[索引] 创建时间
 ) AUTO_INCREMENT = 1;
#钱包
CREATE TABLE IF NOT EXISTS `wallet_89_wallet` (
	id BIGINT NOT NULL	#ID
	,`value` BIGINT DEFAULT 0	#[字段] 余额(分)
	,`inValue` BIGINT DEFAULT 0	#[字段] 累计收入(分)
	,`outValue` BIGINT DEFAULT 0	#[字段] 累计支出(分)
	,`iid` BIGINT DEFAULT 0	#[字段] 最后流水号
	,`ctime` BIGINT DEFAULT 0	#[字段] 创建时间
	,`mtime` BIGINT DEFAULT 0	#[字段] 修改时间
	, PRIMARY KEY(id) 
 ) ;
#订单
CREATE TABLE IF NOT EXISTS `wallet_89_order` (
	id BIGINT NOT NULL	#ID
	,`fitemId` BIGINT DEFAULT 0	#[字段] 支出流水ID
	,`titemId` BIGINT DEFAULT 0	#[字段] 收入流水ID
	,`fwalletId` BIGINT DEFAULT 0	#[字段] 支出钱包ID
	,`twalletId` BIGINT DEFAULT 0	#[字段] 收入钱包ID
	,`value` BIGINT DEFAULT 0	#[字段] 交易金额(分)
	,`ctime` BIGINT DEFAULT 0	#[字段] 创建时间
	, PRIMARY KEY(id) 
 ) ;
#交易流水
CREATE TABLE IF NOT EXISTS `wallet_89_item` (
	id BIGINT NOT NULL AUTO_INCREMENT	#ID
	,`iid` BIGINT DEFAULT 0	#[字段] 流水号
	,`walletId` BIGINT DEFAULT 0	#[字段] 钱包ID
	,`orderId` BIGINT DEFAULT 0	#[字段] 订单ID
	,`walletValue` BIGINT DEFAULT 0	#[字段] 变更后余额(分)
	,`value` BIGINT DEFAULT 0	#[字段] 增加的余额(分)
	,`ctime` BIGINT DEFAULT 0	#[字段] 创建时间
	, PRIMARY KEY(id) 
	,INDEX `iid` (`iid` asc)	#[索引] 流水号
	,INDEX `walletId` (`walletId` asc)	#[索引] 钱包ID
	,INDEX `orderId` (`orderId` asc)	#[索引] 订单ID
	,INDEX `ctime` (`ctime` desc)	#[索引] 创建时间
 ) AUTO_INCREMENT = 1;
#钱包
CREATE TABLE IF NOT EXISTS `wallet_90_wallet` (
	id BIGINT NOT NULL	#ID
	,`value` BIGINT DEFAULT 0	#[字段] 余额(分)
	,`inValue` BIGINT DEFAULT 0	#[字段] 累计收入(分)
	,`outValue` BIGINT DEFAULT 0	#[字段] 累计支出(分)
	,`iid` BIGINT DEFAULT 0	#[字段] 最后流水号
	,`ctime` BIGINT DEFAULT 0	#[字段] 创建时间
	,`mtime` BIGINT DEFAULT 0	#[字段] 修改时间
	, PRIMARY KEY(id) 
 ) ;
#订单
CREATE TABLE IF NOT EXISTS `wallet_90_order` (
	id BIGINT NOT NULL	#ID
	,`fitemId` BIGINT DEFAULT 0	#[字段] 支出流水ID
	,`titemId` BIGINT DEFAULT 0	#[字段] 收入流水ID
	,`fwalletId` BIGINT DEFAULT 0	#[字段] 支出钱包ID
	,`twalletId` BIGINT DEFAULT 0	#[字段] 收入钱包ID
	,`value` BIGINT DEFAULT 0	#[字段] 交易金额(分)
	,`ctime` BIGINT DEFAULT 0	#[字段] 创建时间
	, PRIMARY KEY(id) 
 ) ;
#交易流水
CREATE TABLE IF NOT EXISTS `wallet_90_item` (
	id BIGINT NOT NULL AUTO_INCREMENT	#ID
	,`iid` BIGINT DEFAULT 0	#[字段] 流水号
	,`walletId` BIGINT DEFAULT 0	#[字段] 钱包ID
	,`orderId` BIGINT DEFAULT 0	#[字段] 订单ID
	,`walletValue` BIGINT DEFAULT 0	#[字段] 变更后余额(分)
	,`value` BIGINT DEFAULT 0	#[字段] 增加的余额(分)
	,`ctime` BIGINT DEFAULT 0	#[字段] 创建时间
	, PRIMARY KEY(id) 
	,INDEX `iid` (`iid` asc)	#[索引] 流水号
	,INDEX `walletId` (`walletId` asc)	#[索引] 钱包ID
	,INDEX `orderId` (`orderId` asc)	#[索引] 订单ID
	,INDEX `ctime` (`ctime` desc)	#[索引] 创建时间
 ) AUTO_INCREMENT = 1;
#钱包
CREATE TABLE IF NOT EXISTS `wallet_91_wallet` (
	id BIGINT NOT NULL	#ID
	,`value` BIGINT DEFAULT 0	#[字段] 余额(分)
	,`inValue` BIGINT DEFAULT 0	#[字段] 累计收入(分)
	,`outValue` BIGINT DEFAULT 0	#[字段] 累计支出(分)
	,`iid` BIGINT DEFAULT 0	#[字段] 最后流水号
	,`ctime` BIGINT DEFAULT 0	#[字段] 创建时间
	,`mtime` BIGINT DEFAULT 0	#[字段] 修改时间
	, PRIMARY KEY(id) 
 ) ;
#订单
CREATE TABLE IF NOT EXISTS `wallet_91_order` (
	id BIGINT NOT NULL	#ID
	,`fitemId` BIGINT DEFAULT 0	#[字段] 支出流水ID
	,`titemId` BIGINT DEFAULT 0	#[字段] 收入流水ID
	,`fwalletId` BIGINT DEFAULT 0	#[字段] 支出钱包ID
	,`twalletId` BIGINT DEFAULT 0	#[字段] 收入钱包ID
	,`value` BIGINT DEFAULT 0	#[字段] 交易金额(分)
	,`ctime` BIGINT DEFAULT 0	#[字段] 创建时间
	, PRIMARY KEY(id) 
 ) ;
#交易流水
CREATE TABLE IF NOT EXISTS `wallet_91_item` (
	id BIGINT NOT NULL AUTO_INCREMENT	#ID
	,`iid` BIGINT DEFAULT 0	#[字段] 流水号
	,`walletId` BIGINT DEFAULT 0	#[字段] 钱包ID
	,`orderId` BIGINT DEFAULT 0	#[字段] 订单ID
	,`walletValue` BIGINT DEFAULT 0	#[字段] 变更后余额(分)
	,`value` BIGINT DEFAULT 0	#[字段] 增加的余额(分)
	,`ctime` BIGINT DEFAULT 0	#[字段] 创建时间
	, PRIMARY KEY(id) 
	,INDEX `iid` (`iid` asc)	#[索引] 流水号
	,INDEX `walletId` (`walletId` asc)	#[索引] 钱包ID
	,INDEX `orderId` (`orderId` asc)	#[索引] 订单ID
	,INDEX `ctime` (`ctime` desc)	#[索引] 创建时间
 ) AUTO_INCREMENT = 1;
#钱包
CREATE TABLE IF NOT EXISTS `wallet_92_wallet` (
	id BIGINT NOT NULL	#ID
	,`value` BIGINT DEFAULT 0	#[字段] 余额(分)
	,`inValue` BIGINT DEFAULT 0	#[字段] 累计收入(分)
	,`outValue` BIGINT DEFAULT 0	#[字段] 累计支出(分)
	,`iid` BIGINT DEFAULT 0	#[字段] 最后流水号
	,`ctime` BIGINT DEFAULT 0	#[字段] 创建时间
	,`mtime` BIGINT DEFAULT 0	#[字段] 修改时间
	, PRIMARY KEY(id) 
 ) ;
#订单
CREATE TABLE IF NOT EXISTS `wallet_92_order` (
	id BIGINT NOT NULL	#ID
	,`fitemId` BIGINT DEFAULT 0	#[字段] 支出流水ID
	,`titemId` BIGINT DEFAULT 0	#[字段] 收入流水ID
	,`fwalletId` BIGINT DEFAULT 0	#[字段] 支出钱包ID
	,`twalletId` BIGINT DEFAULT 0	#[字段] 收入钱包ID
	,`value` BIGINT DEFAULT 0	#[字段] 交易金额(分)
	,`ctime` BIGINT DEFAULT 0	#[字段] 创建时间
	, PRIMARY KEY(id) 
 ) ;
#交易流水
CREATE TABLE IF NOT EXISTS `wallet_92_item` (
	id BIGINT NOT NULL AUTO_INCREMENT	#ID
	,`iid` BIGINT DEFAULT 0	#[字段] 流水号
	,`walletId` BIGINT DEFAULT 0	#[字段] 钱包ID
	,`orderId` BIGINT DEFAULT 0	#[字段] 订单ID
	,`walletValue` BIGINT DEFAULT 0	#[字段] 变更后余额(分)
	,`value` BIGINT DEFAULT 0	#[字段] 增加的余额(分)
	,`ctime` BIGINT DEFAULT 0	#[字段] 创建时间
	, PRIMARY KEY(id) 
	,INDEX `iid` (`iid` asc)	#[索引] 流水号
	,INDEX `walletId` (`walletId` asc)	#[索引] 钱包ID
	,INDEX `orderId` (`orderId` asc)	#[索引] 订单ID
	,INDEX `ctime` (`ctime` desc)	#[索引] 创建时间
 ) AUTO_INCREMENT = 1;
#钱包
CREATE TABLE IF NOT EXISTS `wallet_93_wallet` (
	id BIGINT NOT NULL	#ID
	,`value` BIGINT DEFAULT 0	#[字段] 余额(分)
	,`inValue` BIGINT DEFAULT 0	#[字段] 累计收入(分)
	,`outValue` BIGINT DEFAULT 0	#[字段] 累计支出(分)
	,`iid` BIGINT DEFAULT 0	#[字段] 最后流水号
	,`ctime` BIGINT DEFAULT 0	#[字段] 创建时间
	,`mtime` BIGINT DEFAULT 0	#[字段] 修改时间
	, PRIMARY KEY(id) 
 ) ;
#订单
CREATE TABLE IF NOT EXISTS `wallet_93_order` (
	id BIGINT NOT NULL	#ID
	,`fitemId` BIGINT DEFAULT 0	#[字段] 支出流水ID
	,`titemId` BIGINT DEFAULT 0	#[字段] 收入流水ID
	,`fwalletId` BIGINT DEFAULT 0	#[字段] 支出钱包ID
	,`twalletId` BIGINT DEFAULT 0	#[字段] 收入钱包ID
	,`value` BIGINT DEFAULT 0	#[字段] 交易金额(分)
	,`ctime` BIGINT DEFAULT 0	#[字段] 创建时间
	, PRIMARY KEY(id) 
 ) ;
#交易流水
CREATE TABLE IF NOT EXISTS `wallet_93_item` (
	id BIGINT NOT NULL AUTO_INCREMENT	#ID
	,`iid` BIGINT DEFAULT 0	#[字段] 流水号
	,`walletId` BIGINT DEFAULT 0	#[字段] 钱包ID
	,`orderId` BIGINT DEFAULT 0	#[字段] 订单ID
	,`walletValue` BIGINT DEFAULT 0	#[字段] 变更后余额(分)
	,`value` BIGINT DEFAULT 0	#[字段] 增加的余额(分)
	,`ctime` BIGINT DEFAULT 0	#[字段] 创建时间
	, PRIMARY KEY(id) 
	,INDEX `iid` (`iid` asc)	#[索引] 流水号
	,INDEX `walletId` (`walletId` asc)	#[索引] 钱包ID
	,INDEX `orderId` (`orderId` asc)	#[索引] 订单ID
	,INDEX `ctime` (`ctime` desc)	#[索引] 创建时间
 ) AUTO_INCREMENT = 1;
#钱包
CREATE TABLE IF NOT EXISTS `wallet_94_wallet` (
	id BIGINT NOT NULL	#ID
	,`value` BIGINT DEFAULT 0	#[字段] 余额(分)
	,`inValue` BIGINT DEFAULT 0	#[字段] 累计收入(分)
	,`outValue` BIGINT DEFAULT 0	#[字段] 累计支出(分)
	,`iid` BIGINT DEFAULT 0	#[字段] 最后流水号
	,`ctime` BIGINT DEFAULT 0	#[字段] 创建时间
	,`mtime` BIGINT DEFAULT 0	#[字段] 修改时间
	, PRIMARY KEY(id) 
 ) ;
#订单
CREATE TABLE IF NOT EXISTS `wallet_94_order` (
	id BIGINT NOT NULL	#ID
	,`fitemId` BIGINT DEFAULT 0	#[字段] 支出流水ID
	,`titemId` BIGINT DEFAULT 0	#[字段] 收入流水ID
	,`fwalletId` BIGINT DEFAULT 0	#[字段] 支出钱包ID
	,`twalletId` BIGINT DEFAULT 0	#[字段] 收入钱包ID
	,`value` BIGINT DEFAULT 0	#[字段] 交易金额(分)
	,`ctime` BIGINT DEFAULT 0	#[字段] 创建时间
	, PRIMARY KEY(id) 
 ) ;
#交易流水
CREATE TABLE IF NOT EXISTS `wallet_94_item` (
	id BIGINT NOT NULL AUTO_INCREMENT	#ID
	,`iid` BIGINT DEFAULT 0	#[字段] 流水号
	,`walletId` BIGINT DEFAULT 0	#[字段] 钱包ID
	,`orderId` BIGINT DEFAULT 0	#[字段] 订单ID
	,`walletValue` BIGINT DEFAULT 0	#[字段] 变更后余额(分)
	,`value` BIGINT DEFAULT 0	#[字段] 增加的余额(分)
	,`ctime` BIGINT DEFAULT 0	#[字段] 创建时间
	, PRIMARY KEY(id) 
	,INDEX `iid` (`iid` asc)	#[索引] 流水号
	,INDEX `walletId` (`walletId` asc)	#[索引] 钱包ID
	,INDEX `orderId` (`orderId` asc)	#[索引] 订单ID
	,INDEX `ctime` (`ctime` desc)	#[索引] 创建时间
 ) AUTO_INCREMENT = 1;
#钱包
CREATE TABLE IF NOT EXISTS `wallet_95_wallet` (
	id BIGINT NOT NULL	#ID
	,`value` BIGINT DEFAULT 0	#[字段] 余额(分)
	,`inValue` BIGINT DEFAULT 0	#[字段] 累计收入(分)
	,`outValue` BIGINT DEFAULT 0	#[字段] 累计支出(分)
	,`iid` BIGINT DEFAULT 0	#[字段] 最后流水号
	,`ctime` BIGINT DEFAULT 0	#[字段] 创建时间
	,`mtime` BIGINT DEFAULT 0	#[字段] 修改时间
	, PRIMARY KEY(id) 
 ) ;
#订单
CREATE TABLE IF NOT EXISTS `wallet_95_order` (
	id BIGINT NOT NULL	#ID
	,`fitemId` BIGINT DEFAULT 0	#[字段] 支出流水ID
	,`titemId` BIGINT DEFAULT 0	#[字段] 收入流水ID
	,`fwalletId` BIGINT DEFAULT 0	#[字段] 支出钱包ID
	,`twalletId` BIGINT DEFAULT 0	#[字段] 收入钱包ID
	,`value` BIGINT DEFAULT 0	#[字段] 交易金额(分)
	,`ctime` BIGINT DEFAULT 0	#[字段] 创建时间
	, PRIMARY KEY(id) 
 ) ;
#交易流水
CREATE TABLE IF NOT EXISTS `wallet_95_item` (
	id BIGINT NOT NULL AUTO_INCREMENT	#ID
	,`iid` BIGINT DEFAULT 0	#[字段] 流水号
	,`walletId` BIGINT DEFAULT 0	#[字段] 钱包ID
	,`orderId` BIGINT DEFAULT 0	#[字段] 订单ID
	,`walletValue` BIGINT DEFAULT 0	#[字段] 变更后余额(分)
	,`value` BIGINT DEFAULT 0	#[字段] 增加的余额(分)
	,`ctime` BIGINT DEFAULT 0	#[字段] 创建时间
	, PRIMARY KEY(id) 
	,INDEX `iid` (`iid` asc)	#[索引] 流水号
	,INDEX `walletId` (`walletId` asc)	#[索引] 钱包ID
	,INDEX `orderId` (`orderId` asc)	#[索引] 订单ID
	,INDEX `ctime` (`ctime` desc)	#[索引] 创建时间
 ) AUTO_INCREMENT = 1;
#钱包
CREATE TABLE IF NOT EXISTS `wallet_96_wallet` (
	id BIGINT NOT NULL	#ID
	,`value` BIGINT DEFAULT 0	#[字段] 余额(分)
	,`inValue` BIGINT DEFAULT 0	#[字段] 累计收入(分)
	,`outValue` BIGINT DEFAULT 0	#[字段] 累计支出(分)
	,`iid` BIGINT DEFAULT 0	#[字段] 最后流水号
	,`ctime` BIGINT DEFAULT 0	#[字段] 创建时间
	,`mtime` BIGINT DEFAULT 0	#[字段] 修改时间
	, PRIMARY KEY(id) 
 ) ;
#订单
CREATE TABLE IF NOT EXISTS `wallet_96_order` (
	id BIGINT NOT NULL	#ID
	,`fitemId` BIGINT DEFAULT 0	#[字段] 支出流水ID
	,`titemId` BIGINT DEFAULT 0	#[字段] 收入流水ID
	,`fwalletId` BIGINT DEFAULT 0	#[字段] 支出钱包ID
	,`twalletId` BIGINT DEFAULT 0	#[字段] 收入钱包ID
	,`value` BIGINT DEFAULT 0	#[字段] 交易金额(分)
	,`ctime` BIGINT DEFAULT 0	#[字段] 创建时间
	, PRIMARY KEY(id) 
 ) ;
#交易流水
CREATE TABLE IF NOT EXISTS `wallet_96_item` (
	id BIGINT NOT NULL AUTO_INCREMENT	#ID
	,`iid` BIGINT DEFAULT 0	#[字段] 流水号
	,`walletId` BIGINT DEFAULT 0	#[字段] 钱包ID
	,`orderId` BIGINT DEFAULT 0	#[字段] 订单ID
	,`walletValue` BIGINT DEFAULT 0	#[字段] 变更后余额(分)
	,`value` BIGINT DEFAULT 0	#[字段] 增加的余额(分)
	,`ctime` BIGINT DEFAULT 0	#[字段] 创建时间
	, PRIMARY KEY(id) 
	,INDEX `iid` (`iid` asc)	#[索引] 流水号
	,INDEX `walletId` (`walletId` asc)	#[索引] 钱包ID
	,INDEX `orderId` (`orderId` asc)	#[索引] 订单ID
	,INDEX `ctime` (`ctime` desc)	#[索引] 创建时间
 ) AUTO_INCREMENT = 1;
#钱包
CREATE TABLE IF NOT EXISTS `wallet_97_wallet` (
	id BIGINT NOT NULL	#ID
	,`value` BIGINT DEFAULT 0	#[字段] 余额(分)
	,`inValue` BIGINT DEFAULT 0	#[字段] 累计收入(分)
	,`outValue` BIGINT DEFAULT 0	#[字段] 累计支出(分)
	,`iid` BIGINT DEFAULT 0	#[字段] 最后流水号
	,`ctime` BIGINT DEFAULT 0	#[字段] 创建时间
	,`mtime` BIGINT DEFAULT 0	#[字段] 修改时间
	, PRIMARY KEY(id) 
 ) ;
#订单
CREATE TABLE IF NOT EXISTS `wallet_97_order` (
	id BIGINT NOT NULL	#ID
	,`fitemId` BIGINT DEFAULT 0	#[字段] 支出流水ID
	,`titemId` BIGINT DEFAULT 0	#[字段] 收入流水ID
	,`fwalletId` BIGINT DEFAULT 0	#[字段] 支出钱包ID
	,`twalletId` BIGINT DEFAULT 0	#[字段] 收入钱包ID
	,`value` BIGINT DEFAULT 0	#[字段] 交易金额(分)
	,`ctime` BIGINT DEFAULT 0	#[字段] 创建时间
	, PRIMARY KEY(id) 
 ) ;
#交易流水
CREATE TABLE IF NOT EXISTS `wallet_97_item` (
	id BIGINT NOT NULL AUTO_INCREMENT	#ID
	,`iid` BIGINT DEFAULT 0	#[字段] 流水号
	,`walletId` BIGINT DEFAULT 0	#[字段] 钱包ID
	,`orderId` BIGINT DEFAULT 0	#[字段] 订单ID
	,`walletValue` BIGINT DEFAULT 0	#[字段] 变更后余额(分)
	,`value` BIGINT DEFAULT 0	#[字段] 增加的余额(分)
	,`ctime` BIGINT DEFAULT 0	#[字段] 创建时间
	, PRIMARY KEY(id) 
	,INDEX `iid` (`iid` asc)	#[索引] 流水号
	,INDEX `walletId` (`walletId` asc)	#[索引] 钱包ID
	,INDEX `orderId` (`orderId` asc)	#[索引] 订单ID
	,INDEX `ctime` (`ctime` desc)	#[索引] 创建时间
 ) AUTO_INCREMENT = 1;
#钱包
CREATE TABLE IF NOT EXISTS `wallet_98_wallet` (
	id BIGINT NOT NULL	#ID
	,`value` BIGINT DEFAULT 0	#[字段] 余额(分)
	,`inValue` BIGINT DEFAULT 0	#[字段] 累计收入(分)
	,`outValue` BIGINT DEFAULT 0	#[字段] 累计支出(分)
	,`iid` BIGINT DEFAULT 0	#[字段] 最后流水号
	,`ctime` BIGINT DEFAULT 0	#[字段] 创建时间
	,`mtime` BIGINT DEFAULT 0	#[字段] 修改时间
	, PRIMARY KEY(id) 
 ) ;
#订单
CREATE TABLE IF NOT EXISTS `wallet_98_order` (
	id BIGINT NOT NULL	#ID
	,`fitemId` BIGINT DEFAULT 0	#[字段] 支出流水ID
	,`titemId` BIGINT DEFAULT 0	#[字段] 收入流水ID
	,`fwalletId` BIGINT DEFAULT 0	#[字段] 支出钱包ID
	,`twalletId` BIGINT DEFAULT 0	#[字段] 收入钱包ID
	,`value` BIGINT DEFAULT 0	#[字段] 交易金额(分)
	,`ctime` BIGINT DEFAULT 0	#[字段] 创建时间
	, PRIMARY KEY(id) 
 ) ;
#交易流水
CREATE TABLE IF NOT EXISTS `wallet_98_item` (
	id BIGINT NOT NULL AUTO_INCREMENT	#ID
	,`iid` BIGINT DEFAULT 0	#[字段] 流水号
	,`walletId` BIGINT DEFAULT 0	#[字段] 钱包ID
	,`orderId` BIGINT DEFAULT 0	#[字段] 订单ID
	,`walletValue` BIGINT DEFAULT 0	#[字段] 变更后余额(分)
	,`value` BIGINT DEFAULT 0	#[字段] 增加的余额(分)
	,`ctime` BIGINT DEFAULT 0	#[字段] 创建时间
	, PRIMARY KEY(id) 
	,INDEX `iid` (`iid` asc)	#[索引] 流水号
	,INDEX `walletId` (`walletId` asc)	#[索引] 钱包ID
	,INDEX `orderId` (`orderId` asc)	#[索引] 订单ID
	,INDEX `ctime` (`ctime` desc)	#[索引] 创建时间
 ) AUTO_INCREMENT = 1;
#钱包
CREATE TABLE IF NOT EXISTS `wallet_99_wallet` (
	id BIGINT NOT NULL	#ID
	,`value` BIGINT DEFAULT 0	#[字段] 余额(分)
	,`inValue` BIGINT DEFAULT 0	#[字段] 累计收入(分)
	,`outValue` BIGINT DEFAULT 0	#[字段] 累计支出(分)
	,`iid` BIGINT DEFAULT 0	#[字段] 最后流水号
	,`ctime` BIGINT DEFAULT 0	#[字段] 创建时间
	,`mtime` BIGINT DEFAULT 0	#[字段] 修改时间
	, PRIMARY KEY(id) 
 ) ;
#订单
CREATE TABLE IF NOT EXISTS `wallet_99_order` (
	id BIGINT NOT NULL	#ID
	,`fitemId` BIGINT DEFAULT 0	#[字段] 支出流水ID
	,`titemId` BIGINT DEFAULT 0	#[字段] 收入流水ID
	,`fwalletId` BIGINT DEFAULT 0	#[字段] 支出钱包ID
	,`twalletId` BIGINT DEFAULT 0	#[字段] 收入钱包ID
	,`value` BIGINT DEFAULT 0	#[字段] 交易金额(分)
	,`ctime` BIGINT DEFAULT 0	#[字段] 创建时间
	, PRIMARY KEY(id) 
 ) ;
#交易流水
CREATE TABLE IF NOT EXISTS `wallet_99_item` (
	id BIGINT NOT NULL AUTO_INCREMENT	#ID
	,`iid` BIGINT DEFAULT 0	#[字段] 流水号
	,`walletId` BIGINT DEFAULT 0	#[字段] 钱包ID
	,`orderId` BIGINT DEFAULT 0	#[字段] 订单ID
	,`walletValue` BIGINT DEFAULT 0	#[字段] 变更后余额(分)
	,`value` BIGINT DEFAULT 0	#[字段] 增加的余额(分)
	,`ctime` BIGINT DEFAULT 0	#[字段] 创建时间
	, PRIMARY KEY(id) 
	,INDEX `iid` (`iid` asc)	#[索引] 流水号
	,INDEX `walletId` (`walletId` asc)	#[索引] 钱包ID
	,INDEX `orderId` (`orderId` asc)	#[索引] 订单ID
	,INDEX `ctime` (`ctime` desc)	#[索引] 创建时间
 ) AUTO_INCREMENT = 1;
#钱包
CREATE TABLE IF NOT EXISTS `wallet_100_wallet` (
	id BIGINT NOT NULL	#ID
	,`value` BIGINT DEFAULT 0	#[字段] 余额(分)
	,`inValue` BIGINT DEFAULT 0	#[字段] 累计收入(分)
	,`outValue` BIGINT DEFAULT 0	#[字段] 累计支出(分)
	,`iid` BIGINT DEFAULT 0	#[字段] 最后流水号
	,`ctime` BIGINT DEFAULT 0	#[字段] 创建时间
	,`mtime` BIGINT DEFAULT 0	#[字段] 修改时间
	, PRIMARY KEY(id) 
 ) ;
#订单
CREATE TABLE IF NOT EXISTS `wallet_100_order` (
	id BIGINT NOT NULL	#ID
	,`fitemId` BIGINT DEFAULT 0	#[字段] 支出流水ID
	,`titemId` BIGINT DEFAULT 0	#[字段] 收入流水ID
	,`fwalletId` BIGINT DEFAULT 0	#[字段] 支出钱包ID
	,`twalletId` BIGINT DEFAULT 0	#[字段] 收入钱包ID
	,`value` BIGINT DEFAULT 0	#[字段] 交易金额(分)
	,`ctime` BIGINT DEFAULT 0	#[字段] 创建时间
	, PRIMARY KEY(id) 
 ) ;
#交易流水
CREATE TABLE IF NOT EXISTS `wallet_100_item` (
	id BIGINT NOT NULL AUTO_INCREMENT	#ID
	,`iid` BIGINT DEFAULT 0	#[字段] 流水号
	,`walletId` BIGINT DEFAULT 0	#[字段] 钱包ID
	,`orderId` BIGINT DEFAULT 0	#[字段] 订单ID
	,`walletValue` BIGINT DEFAULT 0	#[字段] 变更后余额(分)
	,`value` BIGINT DEFAULT 0	#[字段] 增加的余额(分)
	,`ctime` BIGINT DEFAULT 0	#[字段] 创建时间
	, PRIMARY KEY(id) 
	,INDEX `iid` (`iid` asc)	#[索引] 流水号
	,INDEX `walletId` (`walletId` asc)	#[索引] 钱包ID
	,INDEX `orderId` (`orderId` asc)	#[索引] 订单ID
	,INDEX `ctime` (`ctime` desc)	#[索引] 创建时间
 ) AUTO_INCREMENT = 1;
#钱包
CREATE TABLE IF NOT EXISTS `wallet_101_wallet` (
	id BIGINT NOT NULL	#ID
	,`value` BIGINT DEFAULT 0	#[字段] 余额(分)
	,`inValue` BIGINT DEFAULT 0	#[字段] 累计收入(分)
	,`outValue` BIGINT DEFAULT 0	#[字段] 累计支出(分)
	,`iid` BIGINT DEFAULT 0	#[字段] 最后流水号
	,`ctime` BIGINT DEFAULT 0	#[字段] 创建时间
	,`mtime` BIGINT DEFAULT 0	#[字段] 修改时间
	, PRIMARY KEY(id) 
 ) ;
#订单
CREATE TABLE IF NOT EXISTS `wallet_101_order` (
	id BIGINT NOT NULL	#ID
	,`fitemId` BIGINT DEFAULT 0	#[字段] 支出流水ID
	,`titemId` BIGINT DEFAULT 0	#[字段] 收入流水ID
	,`fwalletId` BIGINT DEFAULT 0	#[字段] 支出钱包ID
	,`twalletId` BIGINT DEFAULT 0	#[字段] 收入钱包ID
	,`value` BIGINT DEFAULT 0	#[字段] 交易金额(分)
	,`ctime` BIGINT DEFAULT 0	#[字段] 创建时间
	, PRIMARY KEY(id) 
 ) ;
#交易流水
CREATE TABLE IF NOT EXISTS `wallet_101_item` (
	id BIGINT NOT NULL AUTO_INCREMENT	#ID
	,`iid` BIGINT DEFAULT 0	#[字段] 流水号
	,`walletId` BIGINT DEFAULT 0	#[字段] 钱包ID
	,`orderId` BIGINT DEFAULT 0	#[字段] 订单ID
	,`walletValue` BIGINT DEFAULT 0	#[字段] 变更后余额(分)
	,`value` BIGINT DEFAULT 0	#[字段] 增加的余额(分)
	,`ctime` BIGINT DEFAULT 0	#[字段] 创建时间
	, PRIMARY KEY(id) 
	,INDEX `iid` (`iid` asc)	#[索引] 流水号
	,INDEX `walletId` (`walletId` asc)	#[索引] 钱包ID
	,INDEX `orderId` (`orderId` asc)	#[索引] 订单ID
	,INDEX `ctime` (`ctime` desc)	#[索引] 创建时间
 ) AUTO_INCREMENT = 1;
#钱包
CREATE TABLE IF NOT EXISTS `wallet_102_wallet` (
	id BIGINT NOT NULL	#ID
	,`value` BIGINT DEFAULT 0	#[字段] 余额(分)
	,`inValue` BIGINT DEFAULT 0	#[字段] 累计收入(分)
	,`outValue` BIGINT DEFAULT 0	#[字段] 累计支出(分)
	,`iid` BIGINT DEFAULT 0	#[字段] 最后流水号
	,`ctime` BIGINT DEFAULT 0	#[字段] 创建时间
	,`mtime` BIGINT DEFAULT 0	#[字段] 修改时间
	, PRIMARY KEY(id) 
 ) ;
#订单
CREATE TABLE IF NOT EXISTS `wallet_102_order` (
	id BIGINT NOT NULL	#ID
	,`fitemId` BIGINT DEFAULT 0	#[字段] 支出流水ID
	,`titemId` BIGINT DEFAULT 0	#[字段] 收入流水ID
	,`fwalletId` BIGINT DEFAULT 0	#[字段] 支出钱包ID
	,`twalletId` BIGINT DEFAULT 0	#[字段] 收入钱包ID
	,`value` BIGINT DEFAULT 0	#[字段] 交易金额(分)
	,`ctime` BIGINT DEFAULT 0	#[字段] 创建时间
	, PRIMARY KEY(id) 
 ) ;
#交易流水
CREATE TABLE IF NOT EXISTS `wallet_102_item` (
	id BIGINT NOT NULL AUTO_INCREMENT	#ID
	,`iid` BIGINT DEFAULT 0	#[字段] 流水号
	,`walletId` BIGINT DEFAULT 0	#[字段] 钱包ID
	,`orderId` BIGINT DEFAULT 0	#[字段] 订单ID
	,`walletValue` BIGINT DEFAULT 0	#[字段] 变更后余额(分)
	,`value` BIGINT DEFAULT 0	#[字段] 增加的余额(分)
	,`ctime` BIGINT DEFAULT 0	#[字段] 创建时间
	, PRIMARY KEY(id) 
	,INDEX `iid` (`iid` asc)	#[索引] 流水号
	,INDEX `walletId` (`walletId` asc)	#[索引] 钱包ID
	,INDEX `orderId` (`orderId` asc)	#[索引] 订单ID
	,INDEX `ctime` (`ctime` desc)	#[索引] 创建时间
 ) AUTO_INCREMENT = 1;
#钱包
CREATE TABLE IF NOT EXISTS `wallet_103_wallet` (
	id BIGINT NOT NULL	#ID
	,`value` BIGINT DEFAULT 0	#[字段] 余额(分)
	,`inValue` BIGINT DEFAULT 0	#[字段] 累计收入(分)
	,`outValue` BIGINT DEFAULT 0	#[字段] 累计支出(分)
	,`iid` BIGINT DEFAULT 0	#[字段] 最后流水号
	,`ctime` BIGINT DEFAULT 0	#[字段] 创建时间
	,`mtime` BIGINT DEFAULT 0	#[字段] 修改时间
	, PRIMARY KEY(id) 
 ) ;
#订单
CREATE TABLE IF NOT EXISTS `wallet_103_order` (
	id BIGINT NOT NULL	#ID
	,`fitemId` BIGINT DEFAULT 0	#[字段] 支出流水ID
	,`titemId` BIGINT DEFAULT 0	#[字段] 收入流水ID
	,`fwalletId` BIGINT DEFAULT 0	#[字段] 支出钱包ID
	,`twalletId` BIGINT DEFAULT 0	#[字段] 收入钱包ID
	,`value` BIGINT DEFAULT 0	#[字段] 交易金额(分)
	,`ctime` BIGINT DEFAULT 0	#[字段] 创建时间
	, PRIMARY KEY(id) 
 ) ;
#交易流水
CREATE TABLE IF NOT EXISTS `wallet_103_item` (
	id BIGINT NOT NULL AUTO_INCREMENT	#ID
	,`iid` BIGINT DEFAULT 0	#[字段] 流水号
	,`walletId` BIGINT DEFAULT 0	#[字段] 钱包ID
	,`orderId` BIGINT DEFAULT 0	#[字段] 订单ID
	,`walletValue` BIGINT DEFAULT 0	#[字段] 变更后余额(分)
	,`value` BIGINT DEFAULT 0	#[字段] 增加的余额(分)
	,`ctime` BIGINT DEFAULT 0	#[字段] 创建时间
	, PRIMARY KEY(id) 
	,INDEX `iid` (`iid` asc)	#[索引] 流水号
	,INDEX `walletId` (`walletId` asc)	#[索引] 钱包ID
	,INDEX `orderId` (`orderId` asc)	#[索引] 订单ID
	,INDEX `ctime` (`ctime` desc)	#[索引] 创建时间
 ) AUTO_INCREMENT = 1;
#钱包
CREATE TABLE IF NOT EXISTS `wallet_104_wallet` (
	id BIGINT NOT NULL	#ID
	,`value` BIGINT DEFAULT 0	#[字段] 余额(分)
	,`inValue` BIGINT DEFAULT 0	#[字段] 累计收入(分)
	,`outValue` BIGINT DEFAULT 0	#[字段] 累计支出(分)
	,`iid` BIGINT DEFAULT 0	#[字段] 最后流水号
	,`ctime` BIGINT DEFAULT 0	#[字段] 创建时间
	,`mtime` BIGINT DEFAULT 0	#[字段] 修改时间
	, PRIMARY KEY(id) 
 ) ;
#订单
CREATE TABLE IF NOT EXISTS `wallet_104_order` (
	id BIGINT NOT NULL	#ID
	,`fitemId` BIGINT DEFAULT 0	#[字段] 支出流水ID
	,`titemId` BIGINT DEFAULT 0	#[字段] 收入流水ID
	,`fwalletId` BIGINT DEFAULT 0	#[字段] 支出钱包ID
	,`twalletId` BIGINT DEFAULT 0	#[字段] 收入钱包ID
	,`value` BIGINT DEFAULT 0	#[字段] 交易金额(分)
	,`ctime` BIGINT DEFAULT 0	#[字段] 创建时间
	, PRIMARY KEY(id) 
 ) ;
#交易流水
CREATE TABLE IF NOT EXISTS `wallet_104_item` (
	id BIGINT NOT NULL AUTO_INCREMENT	#ID
	,`iid` BIGINT DEFAULT 0	#[字段] 流水号
	,`walletId` BIGINT DEFAULT 0	#[字段] 钱包ID
	,`orderId` BIGINT DEFAULT 0	#[字段] 订单ID
	,`walletValue` BIGINT DEFAULT 0	#[字段] 变更后余额(分)
	,`value` BIGINT DEFAULT 0	#[字段] 增加的余额(分)
	,`ctime` BIGINT DEFAULT 0	#[字段] 创建时间
	, PRIMARY KEY(id) 
	,INDEX `iid` (`iid` asc)	#[索引] 流水号
	,INDEX `walletId` (`walletId` asc)	#[索引] 钱包ID
	,INDEX `orderId` (`orderId` asc)	#[索引] 订单ID
	,INDEX `ctime` (`ctime` desc)	#[索引] 创建时间
 ) AUTO_INCREMENT = 1;
#钱包
CREATE TABLE IF NOT EXISTS `wallet_105_wallet` (
	id BIGINT NOT NULL	#ID
	,`value` BIGINT DEFAULT 0	#[字段] 余额(分)
	,`inValue` BIGINT DEFAULT 0	#[字段] 累计收入(分)
	,`outValue` BIGINT DEFAULT 0	#[字段] 累计支出(分)
	,`iid` BIGINT DEFAULT 0	#[字段] 最后流水号
	,`ctime` BIGINT DEFAULT 0	#[字段] 创建时间
	,`mtime` BIGINT DEFAULT 0	#[字段] 修改时间
	, PRIMARY KEY(id) 
 ) ;
#订单
CREATE TABLE IF NOT EXISTS `wallet_105_order` (
	id BIGINT NOT NULL	#ID
	,`fitemId` BIGINT DEFAULT 0	#[字段] 支出流水ID
	,`titemId` BIGINT DEFAULT 0	#[字段] 收入流水ID
	,`fwalletId` BIGINT DEFAULT 0	#[字段] 支出钱包ID
	,`twalletId` BIGINT DEFAULT 0	#[字段] 收入钱包ID
	,`value` BIGINT DEFAULT 0	#[字段] 交易金额(分)
	,`ctime` BIGINT DEFAULT 0	#[字段] 创建时间
	, PRIMARY KEY(id) 
 ) ;
#交易流水
CREATE TABLE IF NOT EXISTS `wallet_105_item` (
	id BIGINT NOT NULL AUTO_INCREMENT	#ID
	,`iid` BIGINT DEFAULT 0	#[字段] 流水号
	,`walletId` BIGINT DEFAULT 0	#[字段] 钱包ID
	,`orderId` BIGINT DEFAULT 0	#[字段] 订单ID
	,`walletValue` BIGINT DEFAULT 0	#[字段] 变更后余额(分)
	,`value` BIGINT DEFAULT 0	#[字段] 增加的余额(分)
	,`ctime` BIGINT DEFAULT 0	#[字段] 创建时间
	, PRIMARY KEY(id) 
	,INDEX `iid` (`iid` asc)	#[索引] 流水号
	,INDEX `walletId` (`walletId` asc)	#[索引] 钱包ID
	,INDEX `orderId` (`orderId` asc)	#[索引] 订单ID
	,INDEX `ctime` (`ctime` desc)	#[索引] 创建时间
 ) AUTO_INCREMENT = 1;
#钱包
CREATE TABLE IF NOT EXISTS `wallet_106_wallet` (
	id BIGINT NOT NULL	#ID
	,`value` BIGINT DEFAULT 0	#[字段] 余额(分)
	,`inValue` BIGINT DEFAULT 0	#[字段] 累计收入(分)
	,`outValue` BIGINT DEFAULT 0	#[字段] 累计支出(分)
	,`iid` BIGINT DEFAULT 0	#[字段] 最后流水号
	,`ctime` BIGINT DEFAULT 0	#[字段] 创建时间
	,`mtime` BIGINT DEFAULT 0	#[字段] 修改时间
	, PRIMARY KEY(id) 
 ) ;
#订单
CREATE TABLE IF NOT EXISTS `wallet_106_order` (
	id BIGINT NOT NULL	#ID
	,`fitemId` BIGINT DEFAULT 0	#[字段] 支出流水ID
	,`titemId` BIGINT DEFAULT 0	#[字段] 收入流水ID
	,`fwalletId` BIGINT DEFAULT 0	#[字段] 支出钱包ID
	,`twalletId` BIGINT DEFAULT 0	#[字段] 收入钱包ID
	,`value` BIGINT DEFAULT 0	#[字段] 交易金额(分)
	,`ctime` BIGINT DEFAULT 0	#[字段] 创建时间
	, PRIMARY KEY(id) 
 ) ;
#交易流水
CREATE TABLE IF NOT EXISTS `wallet_106_item` (
	id BIGINT NOT NULL AUTO_INCREMENT	#ID
	,`iid` BIGINT DEFAULT 0	#[字段] 流水号
	,`walletId` BIGINT DEFAULT 0	#[字段] 钱包ID
	,`orderId` BIGINT DEFAULT 0	#[字段] 订单ID
	,`walletValue` BIGINT DEFAULT 0	#[字段] 变更后余额(分)
	,`value` BIGINT DEFAULT 0	#[字段] 增加的余额(分)
	,`ctime` BIGINT DEFAULT 0	#[字段] 创建时间
	, PRIMARY KEY(id) 
	,INDEX `iid` (`iid` asc)	#[索引] 流水号
	,INDEX `walletId` (`walletId` asc)	#[索引] 钱包ID
	,INDEX `orderId` (`orderId` asc)	#[索引] 订单ID
	,INDEX `ctime` (`ctime` desc)	#[索引] 创建时间
 ) AUTO_INCREMENT = 1;
#钱包
CREATE TABLE IF NOT EXISTS `wallet_107_wallet` (
	id BIGINT NOT NULL	#ID
	,`value` BIGINT DEFAULT 0	#[字段] 余额(分)
	,`inValue` BIGINT DEFAULT 0	#[字段] 累计收入(分)
	,`outValue` BIGINT DEFAULT 0	#[字段] 累计支出(分)
	,`iid` BIGINT DEFAULT 0	#[字段] 最后流水号
	,`ctime` BIGINT DEFAULT 0	#[字段] 创建时间
	,`mtime` BIGINT DEFAULT 0	#[字段] 修改时间
	, PRIMARY KEY(id) 
 ) ;
#订单
CREATE TABLE IF NOT EXISTS `wallet_107_order` (
	id BIGINT NOT NULL	#ID
	,`fitemId` BIGINT DEFAULT 0	#[字段] 支出流水ID
	,`titemId` BIGINT DEFAULT 0	#[字段] 收入流水ID
	,`fwalletId` BIGINT DEFAULT 0	#[字段] 支出钱包ID
	,`twalletId` BIGINT DEFAULT 0	#[字段] 收入钱包ID
	,`value` BIGINT DEFAULT 0	#[字段] 交易金额(分)
	,`ctime` BIGINT DEFAULT 0	#[字段] 创建时间
	, PRIMARY KEY(id) 
 ) ;
#交易流水
CREATE TABLE IF NOT EXISTS `wallet_107_item` (
	id BIGINT NOT NULL AUTO_INCREMENT	#ID
	,`iid` BIGINT DEFAULT 0	#[字段] 流水号
	,`walletId` BIGINT DEFAULT 0	#[字段] 钱包ID
	,`orderId` BIGINT DEFAULT 0	#[字段] 订单ID
	,`walletValue` BIGINT DEFAULT 0	#[字段] 变更后余额(分)
	,`value` BIGINT DEFAULT 0	#[字段] 增加的余额(分)
	,`ctime` BIGINT DEFAULT 0	#[字段] 创建时间
	, PRIMARY KEY(id) 
	,INDEX `iid` (`iid` asc)	#[索引] 流水号
	,INDEX `walletId` (`walletId` asc)	#[索引] 钱包ID
	,INDEX `orderId` (`orderId` asc)	#[索引] 订单ID
	,INDEX `ctime` (`ctime` desc)	#[索引] 创建时间
 ) AUTO_INCREMENT = 1;
#钱包
CREATE TABLE IF NOT EXISTS `wallet_108_wallet` (
	id BIGINT NOT NULL	#ID
	,`value` BIGINT DEFAULT 0	#[字段] 余额(分)
	,`inValue` BIGINT DEFAULT 0	#[字段] 累计收入(分)
	,`outValue` BIGINT DEFAULT 0	#[字段] 累计支出(分)
	,`iid` BIGINT DEFAULT 0	#[字段] 最后流水号
	,`ctime` BIGINT DEFAULT 0	#[字段] 创建时间
	,`mtime` BIGINT DEFAULT 0	#[字段] 修改时间
	, PRIMARY KEY(id) 
 ) ;
#订单
CREATE TABLE IF NOT EXISTS `wallet_108_order` (
	id BIGINT NOT NULL	#ID
	,`fitemId` BIGINT DEFAULT 0	#[字段] 支出流水ID
	,`titemId` BIGINT DEFAULT 0	#[字段] 收入流水ID
	,`fwalletId` BIGINT DEFAULT 0	#[字段] 支出钱包ID
	,`twalletId` BIGINT DEFAULT 0	#[字段] 收入钱包ID
	,`value` BIGINT DEFAULT 0	#[字段] 交易金额(分)
	,`ctime` BIGINT DEFAULT 0	#[字段] 创建时间
	, PRIMARY KEY(id) 
 ) ;
#交易流水
CREATE TABLE IF NOT EXISTS `wallet_108_item` (
	id BIGINT NOT NULL AUTO_INCREMENT	#ID
	,`iid` BIGINT DEFAULT 0	#[字段] 流水号
	,`walletId` BIGINT DEFAULT 0	#[字段] 钱包ID
	,`orderId` BIGINT DEFAULT 0	#[字段] 订单ID
	,`walletValue` BIGINT DEFAULT 0	#[字段] 变更后余额(分)
	,`value` BIGINT DEFAULT 0	#[字段] 增加的余额(分)
	,`ctime` BIGINT DEFAULT 0	#[字段] 创建时间
	, PRIMARY KEY(id) 
	,INDEX `iid` (`iid` asc)	#[索引] 流水号
	,INDEX `walletId` (`walletId` asc)	#[索引] 钱包ID
	,INDEX `orderId` (`orderId` asc)	#[索引] 订单ID
	,INDEX `ctime` (`ctime` desc)	#[索引] 创建时间
 ) AUTO_INCREMENT = 1;
#钱包
CREATE TABLE IF NOT EXISTS `wallet_109_wallet` (
	id BIGINT NOT NULL	#ID
	,`value` BIGINT DEFAULT 0	#[字段] 余额(分)
	,`inValue` BIGINT DEFAULT 0	#[字段] 累计收入(分)
	,`outValue` BIGINT DEFAULT 0	#[字段] 累计支出(分)
	,`iid` BIGINT DEFAULT 0	#[字段] 最后流水号
	,`ctime` BIGINT DEFAULT 0	#[字段] 创建时间
	,`mtime` BIGINT DEFAULT 0	#[字段] 修改时间
	, PRIMARY KEY(id) 
 ) ;
#订单
CREATE TABLE IF NOT EXISTS `wallet_109_order` (
	id BIGINT NOT NULL	#ID
	,`fitemId` BIGINT DEFAULT 0	#[字段] 支出流水ID
	,`titemId` BIGINT DEFAULT 0	#[字段] 收入流水ID
	,`fwalletId` BIGINT DEFAULT 0	#[字段] 支出钱包ID
	,`twalletId` BIGINT DEFAULT 0	#[字段] 收入钱包ID
	,`value` BIGINT DEFAULT 0	#[字段] 交易金额(分)
	,`ctime` BIGINT DEFAULT 0	#[字段] 创建时间
	, PRIMARY KEY(id) 
 ) ;
#交易流水
CREATE TABLE IF NOT EXISTS `wallet_109_item` (
	id BIGINT NOT NULL AUTO_INCREMENT	#ID
	,`iid` BIGINT DEFAULT 0	#[字段] 流水号
	,`walletId` BIGINT DEFAULT 0	#[字段] 钱包ID
	,`orderId` BIGINT DEFAULT 0	#[字段] 订单ID
	,`walletValue` BIGINT DEFAULT 0	#[字段] 变更后余额(分)
	,`value` BIGINT DEFAULT 0	#[字段] 增加的余额(分)
	,`ctime` BIGINT DEFAULT 0	#[字段] 创建时间
	, PRIMARY KEY(id) 
	,INDEX `iid` (`iid` asc)	#[索引] 流水号
	,INDEX `walletId` (`walletId` asc)	#[索引] 钱包ID
	,INDEX `orderId` (`orderId` asc)	#[索引] 订单ID
	,INDEX `ctime` (`ctime` desc)	#[索引] 创建时间
 ) AUTO_INCREMENT = 1;
#钱包
CREATE TABLE IF NOT EXISTS `wallet_110_wallet` (
	id BIGINT NOT NULL	#ID
	,`value` BIGINT DEFAULT 0	#[字段] 余额(分)
	,`inValue` BIGINT DEFAULT 0	#[字段] 累计收入(分)
	,`outValue` BIGINT DEFAULT 0	#[字段] 累计支出(分)
	,`iid` BIGINT DEFAULT 0	#[字段] 最后流水号
	,`ctime` BIGINT DEFAULT 0	#[字段] 创建时间
	,`mtime` BIGINT DEFAULT 0	#[字段] 修改时间
	, PRIMARY KEY(id) 
 ) ;
#订单
CREATE TABLE IF NOT EXISTS `wallet_110_order` (
	id BIGINT NOT NULL	#ID
	,`fitemId` BIGINT DEFAULT 0	#[字段] 支出流水ID
	,`titemId` BIGINT DEFAULT 0	#[字段] 收入流水ID
	,`fwalletId` BIGINT DEFAULT 0	#[字段] 支出钱包ID
	,`twalletId` BIGINT DEFAULT 0	#[字段] 收入钱包ID
	,`value` BIGINT DEFAULT 0	#[字段] 交易金额(分)
	,`ctime` BIGINT DEFAULT 0	#[字段] 创建时间
	, PRIMARY KEY(id) 
 ) ;
#交易流水
CREATE TABLE IF NOT EXISTS `wallet_110_item` (
	id BIGINT NOT NULL AUTO_INCREMENT	#ID
	,`iid` BIGINT DEFAULT 0	#[字段] 流水号
	,`walletId` BIGINT DEFAULT 0	#[字段] 钱包ID
	,`orderId` BIGINT DEFAULT 0	#[字段] 订单ID
	,`walletValue` BIGINT DEFAULT 0	#[字段] 变更后余额(分)
	,`value` BIGINT DEFAULT 0	#[字段] 增加的余额(分)
	,`ctime` BIGINT DEFAULT 0	#[字段] 创建时间
	, PRIMARY KEY(id) 
	,INDEX `iid` (`iid` asc)	#[索引] 流水号
	,INDEX `walletId` (`walletId` asc)	#[索引] 钱包ID
	,INDEX `orderId` (`orderId` asc)	#[索引] 订单ID
	,INDEX `ctime` (`ctime` desc)	#[索引] 创建时间
 ) AUTO_INCREMENT = 1;
#钱包
CREATE TABLE IF NOT EXISTS `wallet_111_wallet` (
	id BIGINT NOT NULL	#ID
	,`value` BIGINT DEFAULT 0	#[字段] 余额(分)
	,`inValue` BIGINT DEFAULT 0	#[字段] 累计收入(分)
	,`outValue` BIGINT DEFAULT 0	#[字段] 累计支出(分)
	,`iid` BIGINT DEFAULT 0	#[字段] 最后流水号
	,`ctime` BIGINT DEFAULT 0	#[字段] 创建时间
	,`mtime` BIGINT DEFAULT 0	#[字段] 修改时间
	, PRIMARY KEY(id) 
 ) ;
#订单
CREATE TABLE IF NOT EXISTS `wallet_111_order` (
	id BIGINT NOT NULL	#ID
	,`fitemId` BIGINT DEFAULT 0	#[字段] 支出流水ID
	,`titemId` BIGINT DEFAULT 0	#[字段] 收入流水ID
	,`fwalletId` BIGINT DEFAULT 0	#[字段] 支出钱包ID
	,`twalletId` BIGINT DEFAULT 0	#[字段] 收入钱包ID
	,`value` BIGINT DEFAULT 0	#[字段] 交易金额(分)
	,`ctime` BIGINT DEFAULT 0	#[字段] 创建时间
	, PRIMARY KEY(id) 
 ) ;
#交易流水
CREATE TABLE IF NOT EXISTS `wallet_111_item` (
	id BIGINT NOT NULL AUTO_INCREMENT	#ID
	,`iid` BIGINT DEFAULT 0	#[字段] 流水号
	,`walletId` BIGINT DEFAULT 0	#[字段] 钱包ID
	,`orderId` BIGINT DEFAULT 0	#[字段] 订单ID
	,`walletValue` BIGINT DEFAULT 0	#[字段] 变更后余额(分)
	,`value` BIGINT DEFAULT 0	#[字段] 增加的余额(分)
	,`ctime` BIGINT DEFAULT 0	#[字段] 创建时间
	, PRIMARY KEY(id) 
	,INDEX `iid` (`iid` asc)	#[索引] 流水号
	,INDEX `walletId` (`walletId` asc)	#[索引] 钱包ID
	,INDEX `orderId` (`orderId` asc)	#[索引] 订单ID
	,INDEX `ctime` (`ctime` desc)	#[索引] 创建时间
 ) AUTO_INCREMENT = 1;
#钱包
CREATE TABLE IF NOT EXISTS `wallet_112_wallet` (
	id BIGINT NOT NULL	#ID
	,`value` BIGINT DEFAULT 0	#[字段] 余额(分)
	,`inValue` BIGINT DEFAULT 0	#[字段] 累计收入(分)
	,`outValue` BIGINT DEFAULT 0	#[字段] 累计支出(分)
	,`iid` BIGINT DEFAULT 0	#[字段] 最后流水号
	,`ctime` BIGINT DEFAULT 0	#[字段] 创建时间
	,`mtime` BIGINT DEFAULT 0	#[字段] 修改时间
	, PRIMARY KEY(id) 
 ) ;
#订单
CREATE TABLE IF NOT EXISTS `wallet_112_order` (
	id BIGINT NOT NULL	#ID
	,`fitemId` BIGINT DEFAULT 0	#[字段] 支出流水ID
	,`titemId` BIGINT DEFAULT 0	#[字段] 收入流水ID
	,`fwalletId` BIGINT DEFAULT 0	#[字段] 支出钱包ID
	,`twalletId` BIGINT DEFAULT 0	#[字段] 收入钱包ID
	,`value` BIGINT DEFAULT 0	#[字段] 交易金额(分)
	,`ctime` BIGINT DEFAULT 0	#[字段] 创建时间
	, PRIMARY KEY(id) 
 ) ;
#交易流水
CREATE TABLE IF NOT EXISTS `wallet_112_item` (
	id BIGINT NOT NULL AUTO_INCREMENT	#ID
	,`iid` BIGINT DEFAULT 0	#[字段] 流水号
	,`walletId` BIGINT DEFAULT 0	#[字段] 钱包ID
	,`orderId` BIGINT DEFAULT 0	#[字段] 订单ID
	,`walletValue` BIGINT DEFAULT 0	#[字段] 变更后余额(分)
	,`value` BIGINT DEFAULT 0	#[字段] 增加的余额(分)
	,`ctime` BIGINT DEFAULT 0	#[字段] 创建时间
	, PRIMARY KEY(id) 
	,INDEX `iid` (`iid` asc)	#[索引] 流水号
	,INDEX `walletId` (`walletId` asc)	#[索引] 钱包ID
	,INDEX `orderId` (`orderId` asc)	#[索引] 订单ID
	,INDEX `ctime` (`ctime` desc)	#[索引] 创建时间
 ) AUTO_INCREMENT = 1;
#钱包
CREATE TABLE IF NOT EXISTS `wallet_113_wallet` (
	id BIGINT NOT NULL	#ID
	,`value` BIGINT DEFAULT 0	#[字段] 余额(分)
	,`inValue` BIGINT DEFAULT 0	#[字段] 累计收入(分)
	,`outValue` BIGINT DEFAULT 0	#[字段] 累计支出(分)
	,`iid` BIGINT DEFAULT 0	#[字段] 最后流水号
	,`ctime` BIGINT DEFAULT 0	#[字段] 创建时间
	,`mtime` BIGINT DEFAULT 0	#[字段] 修改时间
	, PRIMARY KEY(id) 
 ) ;
#订单
CREATE TABLE IF NOT EXISTS `wallet_113_order` (
	id BIGINT NOT NULL	#ID
	,`fitemId` BIGINT DEFAULT 0	#[字段] 支出流水ID
	,`titemId` BIGINT DEFAULT 0	#[字段] 收入流水ID
	,`fwalletId` BIGINT DEFAULT 0	#[字段] 支出钱包ID
	,`twalletId` BIGINT DEFAULT 0	#[字段] 收入钱包ID
	,`value` BIGINT DEFAULT 0	#[字段] 交易金额(分)
	,`ctime` BIGINT DEFAULT 0	#[字段] 创建时间
	, PRIMARY KEY(id) 
 ) ;
#交易流水
CREATE TABLE IF NOT EXISTS `wallet_113_item` (
	id BIGINT NOT NULL AUTO_INCREMENT	#ID
	,`iid` BIGINT DEFAULT 0	#[字段] 流水号
	,`walletId` BIGINT DEFAULT 0	#[字段] 钱包ID
	,`orderId` BIGINT DEFAULT 0	#[字段] 订单ID
	,`walletValue` BIGINT DEFAULT 0	#[字段] 变更后余额(分)
	,`value` BIGINT DEFAULT 0	#[字段] 增加的余额(分)
	,`ctime` BIGINT DEFAULT 0	#[字段] 创建时间
	, PRIMARY KEY(id) 
	,INDEX `iid` (`iid` asc)	#[索引] 流水号
	,INDEX `walletId` (`walletId` asc)	#[索引] 钱包ID
	,INDEX `orderId` (`orderId` asc)	#[索引] 订单ID
	,INDEX `ctime` (`ctime` desc)	#[索引] 创建时间
 ) AUTO_INCREMENT = 1;
#钱包
CREATE TABLE IF NOT EXISTS `wallet_114_wallet` (
	id BIGINT NOT NULL	#ID
	,`value` BIGINT DEFAULT 0	#[字段] 余额(分)
	,`inValue` BIGINT DEFAULT 0	#[字段] 累计收入(分)
	,`outValue` BIGINT DEFAULT 0	#[字段] 累计支出(分)
	,`iid` BIGINT DEFAULT 0	#[字段] 最后流水号
	,`ctime` BIGINT DEFAULT 0	#[字段] 创建时间
	,`mtime` BIGINT DEFAULT 0	#[字段] 修改时间
	, PRIMARY KEY(id) 
 ) ;
#订单
CREATE TABLE IF NOT EXISTS `wallet_114_order` (
	id BIGINT NOT NULL	#ID
	,`fitemId` BIGINT DEFAULT 0	#[字段] 支出流水ID
	,`titemId` BIGINT DEFAULT 0	#[字段] 收入流水ID
	,`fwalletId` BIGINT DEFAULT 0	#[字段] 支出钱包ID
	,`twalletId` BIGINT DEFAULT 0	#[字段] 收入钱包ID
	,`value` BIGINT DEFAULT 0	#[字段] 交易金额(分)
	,`ctime` BIGINT DEFAULT 0	#[字段] 创建时间
	, PRIMARY KEY(id) 
 ) ;
#交易流水
CREATE TABLE IF NOT EXISTS `wallet_114_item` (
	id BIGINT NOT NULL AUTO_INCREMENT	#ID
	,`iid` BIGINT DEFAULT 0	#[字段] 流水号
	,`walletId` BIGINT DEFAULT 0	#[字段] 钱包ID
	,`orderId` BIGINT DEFAULT 0	#[字段] 订单ID
	,`walletValue` BIGINT DEFAULT 0	#[字段] 变更后余额(分)
	,`value` BIGINT DEFAULT 0	#[字段] 增加的余额(分)
	,`ctime` BIGINT DEFAULT 0	#[字段] 创建时间
	, PRIMARY KEY(id) 
	,INDEX `iid` (`iid` asc)	#[索引] 流水号
	,INDEX `walletId` (`walletId` asc)	#[索引] 钱包ID
	,INDEX `orderId` (`orderId` asc)	#[索引] 订单ID
	,INDEX `ctime` (`ctime` desc)	#[索引] 创建时间
 ) AUTO_INCREMENT = 1;
#钱包
CREATE TABLE IF NOT EXISTS `wallet_115_wallet` (
	id BIGINT NOT NULL	#ID
	,`value` BIGINT DEFAULT 0	#[字段] 余额(分)
	,`inValue` BIGINT DEFAULT 0	#[字段] 累计收入(分)
	,`outValue` BIGINT DEFAULT 0	#[字段] 累计支出(分)
	,`iid` BIGINT DEFAULT 0	#[字段] 最后流水号
	,`ctime` BIGINT DEFAULT 0	#[字段] 创建时间
	,`mtime` BIGINT DEFAULT 0	#[字段] 修改时间
	, PRIMARY KEY(id) 
 ) ;
#订单
CREATE TABLE IF NOT EXISTS `wallet_115_order` (
	id BIGINT NOT NULL	#ID
	,`fitemId` BIGINT DEFAULT 0	#[字段] 支出流水ID
	,`titemId` BIGINT DEFAULT 0	#[字段] 收入流水ID
	,`fwalletId` BIGINT DEFAULT 0	#[字段] 支出钱包ID
	,`twalletId` BIGINT DEFAULT 0	#[字段] 收入钱包ID
	,`value` BIGINT DEFAULT 0	#[字段] 交易金额(分)
	,`ctime` BIGINT DEFAULT 0	#[字段] 创建时间
	, PRIMARY KEY(id) 
 ) ;
#交易流水
CREATE TABLE IF NOT EXISTS `wallet_115_item` (
	id BIGINT NOT NULL AUTO_INCREMENT	#ID
	,`iid` BIGINT DEFAULT 0	#[字段] 流水号
	,`walletId` BIGINT DEFAULT 0	#[字段] 钱包ID
	,`orderId` BIGINT DEFAULT 0	#[字段] 订单ID
	,`walletValue` BIGINT DEFAULT 0	#[字段] 变更后余额(分)
	,`value` BIGINT DEFAULT 0	#[字段] 增加的余额(分)
	,`ctime` BIGINT DEFAULT 0	#[字段] 创建时间
	, PRIMARY KEY(id) 
	,INDEX `iid` (`iid` asc)	#[索引] 流水号
	,INDEX `walletId` (`walletId` asc)	#[索引] 钱包ID
	,INDEX `orderId` (`orderId` asc)	#[索引] 订单ID
	,INDEX `ctime` (`ctime` desc)	#[索引] 创建时间
 ) AUTO_INCREMENT = 1;
#钱包
CREATE TABLE IF NOT EXISTS `wallet_116_wallet` (
	id BIGINT NOT NULL	#ID
	,`value` BIGINT DEFAULT 0	#[字段] 余额(分)
	,`inValue` BIGINT DEFAULT 0	#[字段] 累计收入(分)
	,`outValue` BIGINT DEFAULT 0	#[字段] 累计支出(分)
	,`iid` BIGINT DEFAULT 0	#[字段] 最后流水号
	,`ctime` BIGINT DEFAULT 0	#[字段] 创建时间
	,`mtime` BIGINT DEFAULT 0	#[字段] 修改时间
	, PRIMARY KEY(id) 
 ) ;
#订单
CREATE TABLE IF NOT EXISTS `wallet_116_order` (
	id BIGINT NOT NULL	#ID
	,`fitemId` BIGINT DEFAULT 0	#[字段] 支出流水ID
	,`titemId` BIGINT DEFAULT 0	#[字段] 收入流水ID
	,`fwalletId` BIGINT DEFAULT 0	#[字段] 支出钱包ID
	,`twalletId` BIGINT DEFAULT 0	#[字段] 收入钱包ID
	,`value` BIGINT DEFAULT 0	#[字段] 交易金额(分)
	,`ctime` BIGINT DEFAULT 0	#[字段] 创建时间
	, PRIMARY KEY(id) 
 ) ;
#交易流水
CREATE TABLE IF NOT EXISTS `wallet_116_item` (
	id BIGINT NOT NULL AUTO_INCREMENT	#ID
	,`iid` BIGINT DEFAULT 0	#[字段] 流水号
	,`walletId` BIGINT DEFAULT 0	#[字段] 钱包ID
	,`orderId` BIGINT DEFAULT 0	#[字段] 订单ID
	,`walletValue` BIGINT DEFAULT 0	#[字段] 变更后余额(分)
	,`value` BIGINT DEFAULT 0	#[字段] 增加的余额(分)
	,`ctime` BIGINT DEFAULT 0	#[字段] 创建时间
	, PRIMARY KEY(id) 
	,INDEX `iid` (`iid` asc)	#[索引] 流水号
	,INDEX `walletId` (`walletId` asc)	#[索引] 钱包ID
	,INDEX `orderId` (`orderId` asc)	#[索引] 订单ID
	,INDEX `ctime` (`ctime` desc)	#[索引] 创建时间
 ) AUTO_INCREMENT = 1;
#钱包
CREATE TABLE IF NOT EXISTS `wallet_117_wallet` (
	id BIGINT NOT NULL	#ID
	,`value` BIGINT DEFAULT 0	#[字段] 余额(分)
	,`inValue` BIGINT DEFAULT 0	#[字段] 累计收入(分)
	,`outValue` BIGINT DEFAULT 0	#[字段] 累计支出(分)
	,`iid` BIGINT DEFAULT 0	#[字段] 最后流水号
	,`ctime` BIGINT DEFAULT 0	#[字段] 创建时间
	,`mtime` BIGINT DEFAULT 0	#[字段] 修改时间
	, PRIMARY KEY(id) 
 ) ;
#订单
CREATE TABLE IF NOT EXISTS `wallet_117_order` (
	id BIGINT NOT NULL	#ID
	,`fitemId` BIGINT DEFAULT 0	#[字段] 支出流水ID
	,`titemId` BIGINT DEFAULT 0	#[字段] 收入流水ID
	,`fwalletId` BIGINT DEFAULT 0	#[字段] 支出钱包ID
	,`twalletId` BIGINT DEFAULT 0	#[字段] 收入钱包ID
	,`value` BIGINT DEFAULT 0	#[字段] 交易金额(分)
	,`ctime` BIGINT DEFAULT 0	#[字段] 创建时间
	, PRIMARY KEY(id) 
 ) ;
#交易流水
CREATE TABLE IF NOT EXISTS `wallet_117_item` (
	id BIGINT NOT NULL AUTO_INCREMENT	#ID
	,`iid` BIGINT DEFAULT 0	#[字段] 流水号
	,`walletId` BIGINT DEFAULT 0	#[字段] 钱包ID
	,`orderId` BIGINT DEFAULT 0	#[字段] 订单ID
	,`walletValue` BIGINT DEFAULT 0	#[字段] 变更后余额(分)
	,`value` BIGINT DEFAULT 0	#[字段] 增加的余额(分)
	,`ctime` BIGINT DEFAULT 0	#[字段] 创建时间
	, PRIMARY KEY(id) 
	,INDEX `iid` (`iid` asc)	#[索引] 流水号
	,INDEX `walletId` (`walletId` asc)	#[索引] 钱包ID
	,INDEX `orderId` (`orderId` asc)	#[索引] 订单ID
	,INDEX `ctime` (`ctime` desc)	#[索引] 创建时间
 ) AUTO_INCREMENT = 1;
#钱包
CREATE TABLE IF NOT EXISTS `wallet_118_wallet` (
	id BIGINT NOT NULL	#ID
	,`value` BIGINT DEFAULT 0	#[字段] 余额(分)
	,`inValue` BIGINT DEFAULT 0	#[字段] 累计收入(分)
	,`outValue` BIGINT DEFAULT 0	#[字段] 累计支出(分)
	,`iid` BIGINT DEFAULT 0	#[字段] 最后流水号
	,`ctime` BIGINT DEFAULT 0	#[字段] 创建时间
	,`mtime` BIGINT DEFAULT 0	#[字段] 修改时间
	, PRIMARY KEY(id) 
 ) ;
#订单
CREATE TABLE IF NOT EXISTS `wallet_118_order` (
	id BIGINT NOT NULL	#ID
	,`fitemId` BIGINT DEFAULT 0	#[字段] 支出流水ID
	,`titemId` BIGINT DEFAULT 0	#[字段] 收入流水ID
	,`fwalletId` BIGINT DEFAULT 0	#[字段] 支出钱包ID
	,`twalletId` BIGINT DEFAULT 0	#[字段] 收入钱包ID
	,`value` BIGINT DEFAULT 0	#[字段] 交易金额(分)
	,`ctime` BIGINT DEFAULT 0	#[字段] 创建时间
	, PRIMARY KEY(id) 
 ) ;
#交易流水
CREATE TABLE IF NOT EXISTS `wallet_118_item` (
	id BIGINT NOT NULL AUTO_INCREMENT	#ID
	,`iid` BIGINT DEFAULT 0	#[字段] 流水号
	,`walletId` BIGINT DEFAULT 0	#[字段] 钱包ID
	,`orderId` BIGINT DEFAULT 0	#[字段] 订单ID
	,`walletValue` BIGINT DEFAULT 0	#[字段] 变更后余额(分)
	,`value` BIGINT DEFAULT 0	#[字段] 增加的余额(分)
	,`ctime` BIGINT DEFAULT 0	#[字段] 创建时间
	, PRIMARY KEY(id) 
	,INDEX `iid` (`iid` asc)	#[索引] 流水号
	,INDEX `walletId` (`walletId` asc)	#[索引] 钱包ID
	,INDEX `orderId` (`orderId` asc)	#[索引] 订单ID
	,INDEX `ctime` (`ctime` desc)	#[索引] 创建时间
 ) AUTO_INCREMENT = 1;
#钱包
CREATE TABLE IF NOT EXISTS `wallet_119_wallet` (
	id BIGINT NOT NULL	#ID
	,`value` BIGINT DEFAULT 0	#[字段] 余额(分)
	,`inValue` BIGINT DEFAULT 0	#[字段] 累计收入(分)
	,`outValue` BIGINT DEFAULT 0	#[字段] 累计支出(分)
	,`iid` BIGINT DEFAULT 0	#[字段] 最后流水号
	,`ctime` BIGINT DEFAULT 0	#[字段] 创建时间
	,`mtime` BIGINT DEFAULT 0	#[字段] 修改时间
	, PRIMARY KEY(id) 
 ) ;
#订单
CREATE TABLE IF NOT EXISTS `wallet_119_order` (
	id BIGINT NOT NULL	#ID
	,`fitemId` BIGINT DEFAULT 0	#[字段] 支出流水ID
	,`titemId` BIGINT DEFAULT 0	#[字段] 收入流水ID
	,`fwalletId` BIGINT DEFAULT 0	#[字段] 支出钱包ID
	,`twalletId` BIGINT DEFAULT 0	#[字段] 收入钱包ID
	,`value` BIGINT DEFAULT 0	#[字段] 交易金额(分)
	,`ctime` BIGINT DEFAULT 0	#[字段] 创建时间
	, PRIMARY KEY(id) 
 ) ;
#交易流水
CREATE TABLE IF NOT EXISTS `wallet_119_item` (
	id BIGINT NOT NULL AUTO_INCREMENT	#ID
	,`iid` BIGINT DEFAULT 0	#[字段] 流水号
	,`walletId` BIGINT DEFAULT 0	#[字段] 钱包ID
	,`orderId` BIGINT DEFAULT 0	#[字段] 订单ID
	,`walletValue` BIGINT DEFAULT 0	#[字段] 变更后余额(分)
	,`value` BIGINT DEFAULT 0	#[字段] 增加的余额(分)
	,`ctime` BIGINT DEFAULT 0	#[字段] 创建时间
	, PRIMARY KEY(id) 
	,INDEX `iid` (`iid` asc)	#[索引] 流水号
	,INDEX `walletId` (`walletId` asc)	#[索引] 钱包ID
	,INDEX `orderId` (`orderId` asc)	#[索引] 订单ID
	,INDEX `ctime` (`ctime` desc)	#[索引] 创建时间
 ) AUTO_INCREMENT = 1;
#钱包
CREATE TABLE IF NOT EXISTS `wallet_120_wallet` (
	id BIGINT NOT NULL	#ID
	,`value` BIGINT DEFAULT 0	#[字段] 余额(分)
	,`inValue` BIGINT DEFAULT 0	#[字段] 累计收入(分)
	,`outValue` BIGINT DEFAULT 0	#[字段] 累计支出(分)
	,`iid` BIGINT DEFAULT 0	#[字段] 最后流水号
	,`ctime` BIGINT DEFAULT 0	#[字段] 创建时间
	,`mtime` BIGINT DEFAULT 0	#[字段] 修改时间
	, PRIMARY KEY(id) 
 ) ;
#订单
CREATE TABLE IF NOT EXISTS `wallet_120_order` (
	id BIGINT NOT NULL	#ID
	,`fitemId` BIGINT DEFAULT 0	#[字段] 支出流水ID
	,`titemId` BIGINT DEFAULT 0	#[字段] 收入流水ID
	,`fwalletId` BIGINT DEFAULT 0	#[字段] 支出钱包ID
	,`twalletId` BIGINT DEFAULT 0	#[字段] 收入钱包ID
	,`value` BIGINT DEFAULT 0	#[字段] 交易金额(分)
	,`ctime` BIGINT DEFAULT 0	#[字段] 创建时间
	, PRIMARY KEY(id) 
 ) ;
#交易流水
CREATE TABLE IF NOT EXISTS `wallet_120_item` (
	id BIGINT NOT NULL AUTO_INCREMENT	#ID
	,`iid` BIGINT DEFAULT 0	#[字段] 流水号
	,`walletId` BIGINT DEFAULT 0	#[字段] 钱包ID
	,`orderId` BIGINT DEFAULT 0	#[字段] 订单ID
	,`walletValue` BIGINT DEFAULT 0	#[字段] 变更后余额(分)
	,`value` BIGINT DEFAULT 0	#[字段] 增加的余额(分)
	,`ctime` BIGINT DEFAULT 0	#[字段] 创建时间
	, PRIMARY KEY(id) 
	,INDEX `iid` (`iid` asc)	#[索引] 流水号
	,INDEX `walletId` (`walletId` asc)	#[索引] 钱包ID
	,INDEX `orderId` (`orderId` asc)	#[索引] 订单ID
	,INDEX `ctime` (`ctime` desc)	#[索引] 创建时间
 ) AUTO_INCREMENT = 1;
#钱包
CREATE TABLE IF NOT EXISTS `wallet_121_wallet` (
	id BIGINT NOT NULL	#ID
	,`value` BIGINT DEFAULT 0	#[字段] 余额(分)
	,`inValue` BIGINT DEFAULT 0	#[字段] 累计收入(分)
	,`outValue` BIGINT DEFAULT 0	#[字段] 累计支出(分)
	,`iid` BIGINT DEFAULT 0	#[字段] 最后流水号
	,`ctime` BIGINT DEFAULT 0	#[字段] 创建时间
	,`mtime` BIGINT DEFAULT 0	#[字段] 修改时间
	, PRIMARY KEY(id) 
 ) ;
#订单
CREATE TABLE IF NOT EXISTS `wallet_121_order` (
	id BIGINT NOT NULL	#ID
	,`fitemId` BIGINT DEFAULT 0	#[字段] 支出流水ID
	,`titemId` BIGINT DEFAULT 0	#[字段] 收入流水ID
	,`fwalletId` BIGINT DEFAULT 0	#[字段] 支出钱包ID
	,`twalletId` BIGINT DEFAULT 0	#[字段] 收入钱包ID
	,`value` BIGINT DEFAULT 0	#[字段] 交易金额(分)
	,`ctime` BIGINT DEFAULT 0	#[字段] 创建时间
	, PRIMARY KEY(id) 
 ) ;
#交易流水
CREATE TABLE IF NOT EXISTS `wallet_121_item` (
	id BIGINT NOT NULL AUTO_INCREMENT	#ID
	,`iid` BIGINT DEFAULT 0	#[字段] 流水号
	,`walletId` BIGINT DEFAULT 0	#[字段] 钱包ID
	,`orderId` BIGINT DEFAULT 0	#[字段] 订单ID
	,`walletValue` BIGINT DEFAULT 0	#[字段] 变更后余额(分)
	,`value` BIGINT DEFAULT 0	#[字段] 增加的余额(分)
	,`ctime` BIGINT DEFAULT 0	#[字段] 创建时间
	, PRIMARY KEY(id) 
	,INDEX `iid` (`iid` asc)	#[索引] 流水号
	,INDEX `walletId` (`walletId` asc)	#[索引] 钱包ID
	,INDEX `orderId` (`orderId` asc)	#[索引] 订单ID
	,INDEX `ctime` (`ctime` desc)	#[索引] 创建时间
 ) AUTO_INCREMENT = 1;
#钱包
CREATE TABLE IF NOT EXISTS `wallet_122_wallet` (
	id BIGINT NOT NULL	#ID
	,`value` BIGINT DEFAULT 0	#[字段] 余额(分)
	,`inValue` BIGINT DEFAULT 0	#[字段] 累计收入(分)
	,`outValue` BIGINT DEFAULT 0	#[字段] 累计支出(分)
	,`iid` BIGINT DEFAULT 0	#[字段] 最后流水号
	,`ctime` BIGINT DEFAULT 0	#[字段] 创建时间
	,`mtime` BIGINT DEFAULT 0	#[字段] 修改时间
	, PRIMARY KEY(id) 
 ) ;
#订单
CREATE TABLE IF NOT EXISTS `wallet_122_order` (
	id BIGINT NOT NULL	#ID
	,`fitemId` BIGINT DEFAULT 0	#[字段] 支出流水ID
	,`titemId` BIGINT DEFAULT 0	#[字段] 收入流水ID
	,`fwalletId` BIGINT DEFAULT 0	#[字段] 支出钱包ID
	,`twalletId` BIGINT DEFAULT 0	#[字段] 收入钱包ID
	,`value` BIGINT DEFAULT 0	#[字段] 交易金额(分)
	,`ctime` BIGINT DEFAULT 0	#[字段] 创建时间
	, PRIMARY KEY(id) 
 ) ;
#交易流水
CREATE TABLE IF NOT EXISTS `wallet_122_item` (
	id BIGINT NOT NULL AUTO_INCREMENT	#ID
	,`iid` BIGINT DEFAULT 0	#[字段] 流水号
	,`walletId` BIGINT DEFAULT 0	#[字段] 钱包ID
	,`orderId` BIGINT DEFAULT 0	#[字段] 订单ID
	,`walletValue` BIGINT DEFAULT 0	#[字段] 变更后余额(分)
	,`value` BIGINT DEFAULT 0	#[字段] 增加的余额(分)
	,`ctime` BIGINT DEFAULT 0	#[字段] 创建时间
	, PRIMARY KEY(id) 
	,INDEX `iid` (`iid` asc)	#[索引] 流水号
	,INDEX `walletId` (`walletId` asc)	#[索引] 钱包ID
	,INDEX `orderId` (`orderId` asc)	#[索引] 订单ID
	,INDEX `ctime` (`ctime` desc)	#[索引] 创建时间
 ) AUTO_INCREMENT = 1;
#钱包
CREATE TABLE IF NOT EXISTS `wallet_123_wallet` (
	id BIGINT NOT NULL	#ID
	,`value` BIGINT DEFAULT 0	#[字段] 余额(分)
	,`inValue` BIGINT DEFAULT 0	#[字段] 累计收入(分)
	,`outValue` BIGINT DEFAULT 0	#[字段] 累计支出(分)
	,`iid` BIGINT DEFAULT 0	#[字段] 最后流水号
	,`ctime` BIGINT DEFAULT 0	#[字段] 创建时间
	,`mtime` BIGINT DEFAULT 0	#[字段] 修改时间
	, PRIMARY KEY(id) 
 ) ;
#订单
CREATE TABLE IF NOT EXISTS `wallet_123_order` (
	id BIGINT NOT NULL	#ID
	,`fitemId` BIGINT DEFAULT 0	#[字段] 支出流水ID
	,`titemId` BIGINT DEFAULT 0	#[字段] 收入流水ID
	,`fwalletId` BIGINT DEFAULT 0	#[字段] 支出钱包ID
	,`twalletId` BIGINT DEFAULT 0	#[字段] 收入钱包ID
	,`value` BIGINT DEFAULT 0	#[字段] 交易金额(分)
	,`ctime` BIGINT DEFAULT 0	#[字段] 创建时间
	, PRIMARY KEY(id) 
 ) ;
#交易流水
CREATE TABLE IF NOT EXISTS `wallet_123_item` (
	id BIGINT NOT NULL AUTO_INCREMENT	#ID
	,`iid` BIGINT DEFAULT 0	#[字段] 流水号
	,`walletId` BIGINT DEFAULT 0	#[字段] 钱包ID
	,`orderId` BIGINT DEFAULT 0	#[字段] 订单ID
	,`walletValue` BIGINT DEFAULT 0	#[字段] 变更后余额(分)
	,`value` BIGINT DEFAULT 0	#[字段] 增加的余额(分)
	,`ctime` BIGINT DEFAULT 0	#[字段] 创建时间
	, PRIMARY KEY(id) 
	,INDEX `iid` (`iid` asc)	#[索引] 流水号
	,INDEX `walletId` (`walletId` asc)	#[索引] 钱包ID
	,INDEX `orderId` (`orderId` asc)	#[索引] 订单ID
	,INDEX `ctime` (`ctime` desc)	#[索引] 创建时间
 ) AUTO_INCREMENT = 1;
#钱包
CREATE TABLE IF NOT EXISTS `wallet_124_wallet` (
	id BIGINT NOT NULL	#ID
	,`value` BIGINT DEFAULT 0	#[字段] 余额(分)
	,`inValue` BIGINT DEFAULT 0	#[字段] 累计收入(分)
	,`outValue` BIGINT DEFAULT 0	#[字段] 累计支出(分)
	,`iid` BIGINT DEFAULT 0	#[字段] 最后流水号
	,`ctime` BIGINT DEFAULT 0	#[字段] 创建时间
	,`mtime` BIGINT DEFAULT 0	#[字段] 修改时间
	, PRIMARY KEY(id) 
 ) ;
#订单
CREATE TABLE IF NOT EXISTS `wallet_124_order` (
	id BIGINT NOT NULL	#ID
	,`fitemId` BIGINT DEFAULT 0	#[字段] 支出流水ID
	,`titemId` BIGINT DEFAULT 0	#[字段] 收入流水ID
	,`fwalletId` BIGINT DEFAULT 0	#[字段] 支出钱包ID
	,`twalletId` BIGINT DEFAULT 0	#[字段] 收入钱包ID
	,`value` BIGINT DEFAULT 0	#[字段] 交易金额(分)
	,`ctime` BIGINT DEFAULT 0	#[字段] 创建时间
	, PRIMARY KEY(id) 
 ) ;
#交易流水
CREATE TABLE IF NOT EXISTS `wallet_124_item` (
	id BIGINT NOT NULL AUTO_INCREMENT	#ID
	,`iid` BIGINT DEFAULT 0	#[字段] 流水号
	,`walletId` BIGINT DEFAULT 0	#[字段] 钱包ID
	,`orderId` BIGINT DEFAULT 0	#[字段] 订单ID
	,`walletValue` BIGINT DEFAULT 0	#[字段] 变更后余额(分)
	,`value` BIGINT DEFAULT 0	#[字段] 增加的余额(分)
	,`ctime` BIGINT DEFAULT 0	#[字段] 创建时间
	, PRIMARY KEY(id) 
	,INDEX `iid` (`iid` asc)	#[索引] 流水号
	,INDEX `walletId` (`walletId` asc)	#[索引] 钱包ID
	,INDEX `orderId` (`orderId` asc)	#[索引] 订单ID
	,INDEX `ctime` (`ctime` desc)	#[索引] 创建时间
 ) AUTO_INCREMENT = 1;
#钱包
CREATE TABLE IF NOT EXISTS `wallet_125_wallet` (
	id BIGINT NOT NULL	#ID
	,`value` BIGINT DEFAULT 0	#[字段] 余额(分)
	,`inValue` BIGINT DEFAULT 0	#[字段] 累计收入(分)
	,`outValue` BIGINT DEFAULT 0	#[字段] 累计支出(分)
	,`iid` BIGINT DEFAULT 0	#[字段] 最后流水号
	,`ctime` BIGINT DEFAULT 0	#[字段] 创建时间
	,`mtime` BIGINT DEFAULT 0	#[字段] 修改时间
	, PRIMARY KEY(id) 
 ) ;
#订单
CREATE TABLE IF NOT EXISTS `wallet_125_order` (
	id BIGINT NOT NULL	#ID
	,`fitemId` BIGINT DEFAULT 0	#[字段] 支出流水ID
	,`titemId` BIGINT DEFAULT 0	#[字段] 收入流水ID
	,`fwalletId` BIGINT DEFAULT 0	#[字段] 支出钱包ID
	,`twalletId` BIGINT DEFAULT 0	#[字段] 收入钱包ID
	,`value` BIGINT DEFAULT 0	#[字段] 交易金额(分)
	,`ctime` BIGINT DEFAULT 0	#[字段] 创建时间
	, PRIMARY KEY(id) 
 ) ;
#交易流水
CREATE TABLE IF NOT EXISTS `wallet_125_item` (
	id BIGINT NOT NULL AUTO_INCREMENT	#ID
	,`iid` BIGINT DEFAULT 0	#[字段] 流水号
	,`walletId` BIGINT DEFAULT 0	#[字段] 钱包ID
	,`orderId` BIGINT DEFAULT 0	#[字段] 订单ID
	,`walletValue` BIGINT DEFAULT 0	#[字段] 变更后余额(分)
	,`value` BIGINT DEFAULT 0	#[字段] 增加的余额(分)
	,`ctime` BIGINT DEFAULT 0	#[字段] 创建时间
	, PRIMARY KEY(id) 
	,INDEX `iid` (`iid` asc)	#[索引] 流水号
	,INDEX `walletId` (`walletId` asc)	#[索引] 钱包ID
	,INDEX `orderId` (`orderId` asc)	#[索引] 订单ID
	,INDEX `ctime` (`ctime` desc)	#[索引] 创建时间
 ) AUTO_INCREMENT = 1;
#钱包
CREATE TABLE IF NOT EXISTS `wallet_126_wallet` (
	id BIGINT NOT NULL	#ID
	,`value` BIGINT DEFAULT 0	#[字段] 余额(分)
	,`inValue` BIGINT DEFAULT 0	#[字段] 累计收入(分)
	,`outValue` BIGINT DEFAULT 0	#[字段] 累计支出(分)
	,`iid` BIGINT DEFAULT 0	#[字段] 最后流水号
	,`ctime` BIGINT DEFAULT 0	#[字段] 创建时间
	,`mtime` BIGINT DEFAULT 0	#[字段] 修改时间
	, PRIMARY KEY(id) 
 ) ;
#订单
CREATE TABLE IF NOT EXISTS `wallet_126_order` (
	id BIGINT NOT NULL	#ID
	,`fitemId` BIGINT DEFAULT 0	#[字段] 支出流水ID
	,`titemId` BIGINT DEFAULT 0	#[字段] 收入流水ID
	,`fwalletId` BIGINT DEFAULT 0	#[字段] 支出钱包ID
	,`twalletId` BIGINT DEFAULT 0	#[字段] 收入钱包ID
	,`value` BIGINT DEFAULT 0	#[字段] 交易金额(分)
	,`ctime` BIGINT DEFAULT 0	#[字段] 创建时间
	, PRIMARY KEY(id) 
 ) ;
#交易流水
CREATE TABLE IF NOT EXISTS `wallet_126_item` (
	id BIGINT NOT NULL AUTO_INCREMENT	#ID
	,`iid` BIGINT DEFAULT 0	#[字段] 流水号
	,`walletId` BIGINT DEFAULT 0	#[字段] 钱包ID
	,`orderId` BIGINT DEFAULT 0	#[字段] 订单ID
	,`walletValue` BIGINT DEFAULT 0	#[字段] 变更后余额(分)
	,`value` BIGINT DEFAULT 0	#[字段] 增加的余额(分)
	,`ctime` BIGINT DEFAULT 0	#[字段] 创建时间
	, PRIMARY KEY(id) 
	,INDEX `iid` (`iid` asc)	#[索引] 流水号
	,INDEX `walletId` (`walletId` asc)	#[索引] 钱包ID
	,INDEX `orderId` (`orderId` asc)	#[索引] 订单ID
	,INDEX `ctime` (`ctime` desc)	#[索引] 创建时间
 ) AUTO_INCREMENT = 1;
#钱包
CREATE TABLE IF NOT EXISTS `wallet_127_wallet` (
	id BIGINT NOT NULL	#ID
	,`value` BIGINT DEFAULT 0	#[字段] 余额(分)
	,`inValue` BIGINT DEFAULT 0	#[字段] 累计收入(分)
	,`outValue` BIGINT DEFAULT 0	#[字段] 累计支出(分)
	,`iid` BIGINT DEFAULT 0	#[字段] 最后流水号
	,`ctime` BIGINT DEFAULT 0	#[字段] 创建时间
	,`mtime` BIGINT DEFAULT 0	#[字段] 修改时间
	, PRIMARY KEY(id) 
 ) ;
#订单
CREATE TABLE IF NOT EXISTS `wallet_127_order` (
	id BIGINT NOT NULL	#ID
	,`fitemId` BIGINT DEFAULT 0	#[字段] 支出流水ID
	,`titemId` BIGINT DEFAULT 0	#[字段] 收入流水ID
	,`fwalletId` BIGINT DEFAULT 0	#[字段] 支出钱包ID
	,`twalletId` BIGINT DEFAULT 0	#[字段] 收入钱包ID
	,`value` BIGINT DEFAULT 0	#[字段] 交易金额(分)
	,`ctime` BIGINT DEFAULT 0	#[字段] 创建时间
	, PRIMARY KEY(id) 
 ) ;
#交易流水
CREATE TABLE IF NOT EXISTS `wallet_127_item` (
	id BIGINT NOT NULL AUTO_INCREMENT	#ID
	,`iid` BIGINT DEFAULT 0	#[字段] 流水号
	,`walletId` BIGINT DEFAULT 0	#[字段] 钱包ID
	,`orderId` BIGINT DEFAULT 0	#[字段] 订单ID
	,`walletValue` BIGINT DEFAULT 0	#[字段] 变更后余额(分)
	,`value` BIGINT DEFAULT 0	#[字段] 增加的余额(分)
	,`ctime` BIGINT DEFAULT 0	#[字段] 创建时间
	, PRIMARY KEY(id) 
	,INDEX `iid` (`iid` asc)	#[索引] 流水号
	,INDEX `walletId` (`walletId` asc)	#[索引] 钱包ID
	,INDEX `orderId` (`orderId` asc)	#[索引] 订单ID
	,INDEX `ctime` (`ctime` desc)	#[索引] 创建时间
 ) AUTO_INCREMENT = 1;
#钱包
CREATE TABLE IF NOT EXISTS `wallet_128_wallet` (
	id BIGINT NOT NULL	#ID
	,`value` BIGINT DEFAULT 0	#[字段] 余额(分)
	,`inValue` BIGINT DEFAULT 0	#[字段] 累计收入(分)
	,`outValue` BIGINT DEFAULT 0	#[字段] 累计支出(分)
	,`iid` BIGINT DEFAULT 0	#[字段] 最后流水号
	,`ctime` BIGINT DEFAULT 0	#[字段] 创建时间
	,`mtime` BIGINT DEFAULT 0	#[字段] 修改时间
	, PRIMARY KEY(id) 
 ) ;
#订单
CREATE TABLE IF NOT EXISTS `wallet_128_order` (
	id BIGINT NOT NULL	#ID
	,`fitemId` BIGINT DEFAULT 0	#[字段] 支出流水ID
	,`titemId` BIGINT DEFAULT 0	#[字段] 收入流水ID
	,`fwalletId` BIGINT DEFAULT 0	#[字段] 支出钱包ID
	,`twalletId` BIGINT DEFAULT 0	#[字段] 收入钱包ID
	,`value` BIGINT DEFAULT 0	#[字段] 交易金额(分)
	,`ctime` BIGINT DEFAULT 0	#[字段] 创建时间
	, PRIMARY KEY(id) 
 ) ;
#交易流水
CREATE TABLE IF NOT EXISTS `wallet_128_item` (
	id BIGINT NOT NULL AUTO_INCREMENT	#ID
	,`iid` BIGINT DEFAULT 0	#[字段] 流水号
	,`walletId` BIGINT DEFAULT 0	#[字段] 钱包ID
	,`orderId` BIGINT DEFAULT 0	#[字段] 订单ID
	,`walletValue` BIGINT DEFAULT 0	#[字段] 变更后余额(分)
	,`value` BIGINT DEFAULT 0	#[字段] 增加的余额(分)
	,`ctime` BIGINT DEFAULT 0	#[字段] 创建时间
	, PRIMARY KEY(id) 
	,INDEX `iid` (`iid` asc)	#[索引] 流水号
	,INDEX `walletId` (`walletId` asc)	#[索引] 钱包ID
	,INDEX `orderId` (`orderId` asc)	#[索引] 订单ID
	,INDEX `ctime` (`ctime` desc)	#[索引] 创建时间
 ) AUTO_INCREMENT = 1;
