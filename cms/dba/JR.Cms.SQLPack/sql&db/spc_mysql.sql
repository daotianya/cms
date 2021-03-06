
CREATE TABLE `cms_archives` (
  `id` varchar(16) NOT NULL,
  `alias` varchar(50) DEFAULT NULL,
  `cid` int(11) NOT NULL,
  `author` varchar(50) DEFAULT NULL,
  `title` varchar(100) DEFAULT NULL,
  `source` varchar(50) DEFAULT NULL,
  `tags` varchar(100) DEFAULT NULL,
  `outline` varchar(255) DEFAULT NULL,
  `content` text,
  `properties` varchar(500) DEFAULT NULL,
  `viewcount` int(50) DEFAULT '0',
  `agree` int(11) DEFAULT NULL,
  `disagree` int(11) DEFAULT NULL,
  `createdate` datetime DEFAULT NULL,
  `lastmodifydate` datetime DEFAULT NULL,
  `flags` varchar(100) DEFAULT '{st:''''0'''',sc:''''0'''',v:''''1'''',p:''''0''''}',
  `thumbnail` varchar(150) DEFAULT NULL,
  PRIMARY KEY (`id`)
) ENGINE=MyISAM DEFAULT CHARSET=utf8
;
INSERT cms_archives (id,alias,cid,author,title,content,properties,viewcount,agree,disagree,createdate,lastmodifydate,flags) VALUES ( 'spcnet','welcome',2,'admin','欢迎使用Special Cms .NET','<div style="text-align:center;font-size:30px"><h2>欢迎使用Special Cms .NET!</h2></div>','{}',1,0,0,'2013/1/1 1:01:01','2013/1/1 1:01:01','{st:''0'',sc:''0'',v:''1'',p:''0''}');

CREATE TABLE `cms_categories` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `siteid` int(10) DEFAULT '1',
  `moduleid` int(11) NOT NULL,
  `tag` varchar(100) DEFAULT NULL,
  `name` varchar(100) DEFAULT NULL,
  `lft` int(11) DEFAULT NULL,
  `rgt` int(11) DEFAULT NULL,
  `pagetitle` varchar(200) DEFAULT NULL,
  `keywords` varchar(200) DEFAULT NULL,
  `description` varchar(250) DEFAULT NULL,
  `orderindex` int(11) DEFAULT '0',
  PRIMARY KEY (`id`)
) ENGINE=MyISAM AUTO_INCREMENT=1 DEFAULT CHARSET=utf8
;
INSERT cms_categories (siteid,moduleid,tag,name,lft,rgt,orderindex) VALUES ( 0,1,'root','根栏目',1,4,0);
INSERT cms_categories (siteid,moduleid,tag,name,lft,rgt,orderindex) VALUES ( 1,1,'cms','欢迎使用',2,3,0);

CREATE TABLE `cms_comments` (
  `id` int(16) NOT NULL,
  `archiveid` varchar(16) DEFAULT NULL,
  `memberid` int(11) DEFAULT NULL,
  `ip` varchar(20) DEFAULT NULL,
  `content` text,
  `recycle` tinyint(1) DEFAULT NULL,
  `createdate` datetime DEFAULT NULL,
  PRIMARY KEY (`id`)
) ENGINE=MyISAM DEFAULT CHARSET=utf8
;

CREATE TABLE `cms_links` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `pid` int(11) DEFAULT NULL,
  `siteid` int(10) DEFAULT '1',
  `type` int(11) NOT NULL,
  `text` varchar(100) NOT NULL,
  `uri` varchar(255) NOT NULL,
  `target` varchar(50) DEFAULT NULL,
  `imgurl` varchar(100) DEFAULT NULL,
  `bind` varchar(20) DEFAULT NULL,
  `index` int(11) DEFAULT NULL,
  `visible` tinyint(1) NOT NULL,
  PRIMARY KEY (`id`)
) ENGINE=MyISAM AUTO_INCREMENT=1 DEFAULT CHARSET=utf8
;
INSERT cms_links (pid,siteid,type,text,uri,target,index,visible) VALUES ( 0,1,2,'SPC.NET','http://www.j6.cc/cms/','_blank',2,1);
INSERT cms_links (pid,siteid,type,text,uri,index,visible) VALUES ( 0,1,1,'首页','/',1,1);
INSERT cms_links (pid,siteid,type,text,uri,index,visible) VALUES ( 0,1,1,'欢迎使用','/cms/welcome.html',2,1);

CREATE TABLE `cms_logs` (
  `id` varchar(30) NOT NULL,
  `typeid` int(11) DEFAULT NULL,
  `description` varchar(255) DEFAULT NULL,
  `content` text,
  `helplink` varchar(255) DEFAULT NULL,
  `recorddate` datetime DEFAULT NULL,
  PRIMARY KEY (`id`)
) ENGINE=MyISAM DEFAULT CHARSET=utf8
;

CREATE TABLE `cms_memberdetails` (
  `uid` int(11) NOT NULL,
  `status` varchar(10) DEFAULT NULL,
  `regip` varchar(15) DEFAULT NULL,
  `regtime` datetime DEFAULT NULL,
  `lastlogintime` datetime DEFAULT NULL,
  `token` varchar(100) DEFAULT NULL,
  PRIMARY KEY (`uid`)
) ENGINE=MyISAM DEFAULT CHARSET=utf8
;

CREATE TABLE `cms_members` (
  `id` int(11) NOT NULL,
  `username` varchar(20) DEFAULT NULL,
  `password` varchar(40) DEFAULT NULL,
  `avatar` varchar(255) DEFAULT NULL,
  `sex` varchar(7) DEFAULT NULL,
  `nickname` varchar(15) DEFAULT NULL,
  `email` varchar(50) DEFAULT NULL,
  `telphone` varchar(20) DEFAULT NULL,
  `note` varchar(255) DEFAULT NULL,
  `usergroupid` int(11) DEFAULT NULL,
  PRIMARY KEY (`id`)
) ENGINE=MyISAM DEFAULT CHARSET=utf8
;

CREATE TABLE `cms_message` (
  `id` int(16) NOT NULL,
  `senduid` int(11) DEFAULT NULL,
  `receiveuid` int(11) DEFAULT NULL,
  `subject` varchar(50) DEFAULT NULL,
  `content` varchar(255) DEFAULT NULL,
  `hasread` tinyint(1) DEFAULT NULL,
  `recycle` tinyint(1) DEFAULT NULL,
  `senddate` datetime DEFAULT NULL,
  PRIMARY KEY (`id`)
) ENGINE=MyISAM DEFAULT CHARSET=utf8
;

CREATE TABLE `cms_modules` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `siteid` int(1) DEFAULT '1',
  `name` varchar(50) NOT NULL,
  `issystem` tinyint(1) DEFAULT NULL,
  `isdelete` tinyint(1) DEFAULT NULL,
  PRIMARY KEY (`id`)
) ENGINE=MyISAM AUTO_INCREMENT=1 DEFAULT CHARSET=utf8
;
INSERT cms_modules (siteid,name,issystem,isdelete) VALUES ( 0,'自定义页面',1,0);
INSERT cms_modules (siteid,name,issystem,isdelete) VALUES ( 0,'文档',1,0);

CREATE TABLE `cms_operations` (
  `id` bigint(20) NOT NULL AUTO_INCREMENT,
  `name` varchar(255) DEFAULT NULL,
  `path` varchar(255) DEFAULT NULL,
  `available` tinyint(1) DEFAULT '0',
  PRIMARY KEY (`ID`)
) ENGINE=MyISAM AUTO_INCREMENT=44 DEFAULT CHARSET=utf8
;
INSERT cms_operations (name,path,available) VALUES ( '友情链接','link?view=list&type=friendlink',1);
INSERT cms_operations (name,path,available) VALUES ( '分类->分类列表','catalog?view=list',1);
INSERT cms_operations (name,path,available) VALUES ( '系统->网站设置','config?id=1',1);
INSERT cms_operations (name,path,available) VALUES ( '系统->网站基本资料修改','config?id=2',1);
INSERT cms_operations (name,path,available) VALUES ( '系统->网站优化设置','config?id=3',1);
INSERT cms_operations (name,path,available) VALUES ( '错误日志','system?view=errorlog',1);
INSERT cms_operations (name,path,available) VALUES ( '内容->页面管理','archive?view=list&type=1',1);
INSERT cms_operations (name,path,available) VALUES ( '内容->添加页面','archive?view=create&type=1',1);
INSERT cms_operations (name,path,available) VALUES ( '内容->信息列表','archive?view=list&type=2',1);
INSERT cms_operations (name,path,available) VALUES ( '内容->发布信息','archive?view=create&type=2',1);
INSERT cms_operations (name,path,available) VALUES ( '分类->删除分类','app.axd?do=catalog:delete',1);
INSERT cms_operations (name,path,available) VALUES ( '分类->修改分类','app.axd?do=catalog:update',1);
INSERT cms_operations (name,path,available) VALUES ( '会员>会员列表','user?view=member',1);
INSERT cms_operations (name,path,available) VALUES ( '会员>删除会员','app.axd?do=member:delete',1);
INSERT cms_operations (name,path,available) VALUES ( '系统用户管理','user?view=user',1);
INSERT cms_operations (name,path,available) VALUES ( '删除评论','app.axd?do=archive:deletecomment',1);
INSERT cms_operations (name,path,available) VALUES ( '头部导航链接','link?view=list&type=headerlink',1);
INSERT cms_operations (name,path,available) VALUES ( '网站导航链接','link?view=list&type=navigation',1);
INSERT cms_operations (name,path,available) VALUES ( '添加新链接','link?view=create',1);
INSERT cms_operations (name,path,available) VALUES ( '修改链接','link?view=edit',1);
INSERT cms_operations (name,path,available) VALUES ( '删除链接','app.axd?do=link:delete',1);
INSERT cms_operations (name,path,available) VALUES ( '更新页面','archive?view=update&typeid=1',1);
INSERT cms_operations (name,path,available) VALUES ( '更新信息','archive?view=update&typeid=2',1);
INSERT cms_operations (name,path,available) VALUES ( '更新图文信息','archive?view=update&typeid=3',1);
INSERT cms_operations (name,path,available) VALUES ( '更新画廊信息','archive?view=update&typeid=4',1);
INSERT cms_operations (name,path,available) VALUES ( '更新视频信息','archive?view=update&typeid=5',1);
INSERT cms_operations (name,path,available) VALUES ( '更新专题信息','archive?view=update&typeid=6',1);
INSERT cms_operations (name,path,available) VALUES ( '图文信息列表','archive?view=list&typeid=3',1);
INSERT cms_operations (name,path,available) VALUES ( '画廊息列表','archive?view=list&typeid=4',1);
INSERT cms_operations (name,path,available) VALUES ( '视频信息列表','archive?view=list&typeid=5',1);
INSERT cms_operations (name,path,available) VALUES ( '专题列表','archive?view=list&typeid=6',1);
INSERT cms_operations (name,path,available) VALUES ( '发布图文信息','archive?view=create&typeid=3',1);
INSERT cms_operations (name,path,available) VALUES ( '发布画廊信息','archive?view=create&typeid=4',1);
INSERT cms_operations (name,path,available) VALUES ( '发布视频信息','archive?view=create&typeid=5',1);
INSERT cms_operations (name,path,available) VALUES ( '创建新专题','archive?view=create&typeid=6',1);
INSERT cms_operations (name,path,available) VALUES ( '清除缓存','system?view=clearcache',1);
INSERT cms_operations (name,path,available) VALUES ( '操作列表','operation?view=list',1);
INSERT cms_operations (name,path,available) VALUES ( '用户组操作权限设置','operation?view=set',1);
INSERT cms_operations (name,path,available) VALUES ( '清除错误日志','/app.axd?log:clearErrorLog',1);
INSERT cms_operations (name,path,available) VALUES ( '删除文档','archive:delete',1);
INSERT cms_operations (name,path,available) VALUES ( '刷新文档创建时间','archive:refresh',1);
INSERT cms_operations (name,path,available) VALUES ( '内容采集','/plugin/collection.ashx',1);

CREATE TABLE `cms_properties` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `moduleID` int(11) NOT NULL,
  `key` varchar(20) NOT NULL,
  `name` varchar(50) NOT NULL,
  `ui` varchar(100) NOT NULL,
  `defaultValue` varchar(20) DEFAULT NULL,
  PRIMARY KEY (`id`)
) ENGINE=MyISAM AUTO_INCREMENT=1 DEFAULT CHARSET=utf8
;

CREATE TABLE `cms_reviews` (
  `id` varchar(255) NOT NULL,
  `members` text NOT NULL,
  PRIMARY KEY (`id`)
) ENGINE=MyISAM DEFAULT CHARSET=utf8
;

CREATE TABLE `cms_sites` (
  `siteid` int(1) NOT NULL AUTO_INCREMENT,
  `name` varchar(50) NOT NULL,
  `dirname` varchar(50) DEFAULT NULL,
  `domain` varchar(50) DEFAULT NULL,
  `language` int(1) NOT NULL,
  `tpl` varchar(100) DEFAULT NULL,
  `note` varchar(200) DEFAULT NULL,
  `seotitle` varchar(200) DEFAULT NULL,
  `seokeywords` varchar(250) DEFAULT NULL,
  `seodescription` varchar(250) DEFAULT NULL,
  `state` int(1) NOT NULL,
  `protel` varchar(50) DEFAULT NULL,
  `prophone` varchar(11) DEFAULT NULL,
  `profax` varchar(50) DEFAULT NULL,
  `proaddress` varchar(100) DEFAULT NULL,
  `proemail` varchar(100) DEFAULT NULL,
  `proqq` varchar(100) DEFAULT NULL,
  `promsn` varchar(100) DEFAULT NULL,
  `pronotice` varchar(250) DEFAULT NULL,
  `proslogan` varchar(250) DEFAULT NULL,
  PRIMARY KEY (`siteid`)
) ENGINE=MyISAM AUTO_INCREMENT=1 DEFAULT CHARSET=utf8
;
INSERT cms_sites (name,language,tpl,seotitle,state,protel,prophone,profax,proaddress,pronotice,proslogan) VALUES ( '默认站点',1,'default','默认站点-Speicial Cms .NET!',1,'','','','','SPC.NET是一款跨平台支持多站点基于ASP.NET MVC技术架构的内容管理系统!');

CREATE TABLE `cms_table` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `name` varchar(50) NOT NULL,
  `note` varchar(500) DEFAULT NULL,
  `apiserver` varchar(200) DEFAULT NULL,
  `issystem` bit(1) NOT NULL,
  `available` bit(1) NOT NULL,
  PRIMARY KEY (`id`)
) ENGINE=MyISAM AUTO_INCREMENT=1 DEFAULT CHARSET=utf8
;

CREATE TABLE `cms_table_columns` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `tableid` int(11) NOT NULL,
  `name` varchar(20) NOT NULL,
  `note` varchar(50) DEFAULT NULL,
  `validformat` varchar(200) DEFAULT NULL,
  `orderindex` int(11) NOT NULL,
  PRIMARY KEY (`id`)
) ENGINE=MyISAM AUTO_INCREMENT=1 DEFAULT CHARSET=utf8
;

CREATE TABLE `cms_table_rows` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `tableid` int(11) NOT NULL,
  `submittime` datetime NOT NULL,
  PRIMARY KEY (`id`)
) ENGINE=MyISAM AUTO_INCREMENT=1 DEFAULT CHARSET=utf8
;

CREATE TABLE `cms_table_rowsdata` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `rid` int(11) NOT NULL,
  `cid` int(11) NOT NULL,
  `value` varchar(1000) DEFAULT NULL,
  PRIMARY KEY (`id`)
) ENGINE=MyISAM AUTO_INCREMENT=1 DEFAULT CHARSET=utf8
;

CREATE TABLE `cms_tplbinds` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `bindid` varchar(20) NOT NULL,
  `bindtype` int(2) NOT NULL,
  `tplpath` varchar(200) DEFAULT NULL,
  PRIMARY KEY (`id`)
) ENGINE=MyISAM AUTO_INCREMENT=1 DEFAULT CHARSET=utf8
;

CREATE TABLE `cms_usergroups` (
  `id` int(11) NOT NULL,
  `name` varchar(50) DEFAULT NULL,
  `permissions` varchar(255) DEFAULT NULL,
  PRIMARY KEY (`id`)
) ENGINE=MyISAM DEFAULT CHARSET=utf8
;
INSERT cms_usergroups (id,name,permissions) VALUES ( 1,'超级管理员','1,2,3,4,5,6,7,8,9,10,11,12,13,14,15,16,17,18,19,20,21,22,23,24,25,26,27,28,29,30,31,32,33,34,35,36,37,38,39,40,41,42');
INSERT cms_usergroups (id,name,permissions) VALUES ( 2,'管理员','1,2,3,4,5,6,7,8,9,10,11,12,13,14,15,16,17,40,41,42');
INSERT cms_usergroups (id,name,permissions) VALUES ( 3,'编辑','1,2,3,4,5,6,10,11,12,13,14,15');
INSERT cms_usergroups (id,name,permissions) VALUES ( 4,'会员','1,2,3,4,5,6');
INSERT cms_usergroups (id,name,permissions) VALUES ( 5,'游客','3,4');
INSERT cms_usergroups (id) VALUES ( 0);

CREATE TABLE `cms_users` (
  `userid` int(10) NOT NULL AUTO_INCREMENT,
  `siteid` int(10) NOT NULL DEFAULT '1',
  `username` varchar(50) CHARACTER SET utf8 NOT NULL,
  `password` varchar(50) CHARACTER SET utf8 DEFAULT NULL,
  `name` varchar(50) CHARACTER SET utf8 DEFAULT NULL,
  `groupid` int(11) DEFAULT NULL,
  `available` tinyint(4) DEFAULT NULL,
  `createdate` datetime DEFAULT NULL,
  `lastlogindate` datetime DEFAULT NULL,
  PRIMARY KEY (`userid`)
) ENGINE=MyISAM AUTO_INCREMENT=1 DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci
;
