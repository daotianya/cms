﻿//------------------------------------------------------------------------------
// <auto-generated>
//     此代码由工具生成。
//     运行时版本:4.0.30319.42000
//
//     对此文件的更改可能会导致不正确的行为，并且如果
//     重新生成代码，这些更改将会丢失。
// </auto-generated>
//------------------------------------------------------------------------------

namespace JR.Cms.Web.Resource.WebManager {
    using System;
    
    
    /// <summary>
    ///   一个强类型的资源类，用于查找本地化的字符串等。
    /// </summary>
    // 此类是由 StronglyTypedResourceBuilder
    // 类通过类似于 ResGen 或 Visual Studio 的工具自动生成的。
    // 若要添加或移除成员，请编辑 .ResX 文件，然后重新运行 ResGen
    // (以 /str 作为命令选项)，或重新生成 VS 项目。
    [global::System.CodeDom.Compiler.GeneratedCodeAttribute("System.Resources.Tools.StronglyTypedResourceBuilder", "4.0.0.0")]
    [global::System.Diagnostics.DebuggerNonUserCodeAttribute()]
    [global::System.Runtime.CompilerServices.CompilerGeneratedAttribute()]
    public class WebManagerResource {
        
        private static global::System.Resources.ResourceManager resourceMan;
        
        private static global::System.Globalization.CultureInfo resourceCulture;
        
        [global::System.Diagnostics.CodeAnalysis.SuppressMessageAttribute("Microsoft.Performance", "CA1811:AvoidUncalledPrivateCode")]
        internal WebManagerResource() {
        }
        
        /// <summary>
        ///   返回此类使用的缓存的 ResourceManager 实例。
        /// </summary>
        [global::System.ComponentModel.EditorBrowsableAttribute(global::System.ComponentModel.EditorBrowsableState.Advanced)]
        public static global::System.Resources.ResourceManager ResourceManager {
            get {
                if (object.ReferenceEquals(resourceMan, null)) {
                    global::System.Resources.ResourceManager temp = new global::System.Resources.ResourceManager("JR.Cms.Web.Resource.WebManager.WebManagerResource", typeof(WebManagerResource).Assembly);
                    resourceMan = temp;
                }
                return resourceMan;
            }
        }
        
        /// <summary>
        ///   使用此强类型资源类，为所有资源查找
        ///   重写当前线程的 CurrentUICulture 属性。
        /// </summary>
        [global::System.ComponentModel.EditorBrowsableAttribute(global::System.ComponentModel.EditorBrowsableState.Advanced)]
        public static global::System.Globalization.CultureInfo Culture {
            get {
                return resourceCulture;
            }
            set {
                resourceCulture = value;
            }
        }
        
        /// <summary>
        ///   查找类似 &lt;!DOCTYPE html&gt;
        ///&lt;html&gt;
        ///	&lt;head&gt;
        ///		&lt;title&gt;文档标签替换&lt;/title&gt;
        ///    $css()
        ///	&lt;/head&gt;
        ///	&lt;body style=&quot;padding:30px&quot;&gt;
        ///	&lt;div&gt;
        ///	    注：使用此功能可以将整个站点的文档的关键词进行批量自动添加内链！
        ///	    &lt;br/&gt;&lt;br/&gt;&lt;br/&gt;
        ///	&lt;/div&gt;
        ///
        ///        &lt;div&gt;
        ///            &lt;span class=&quot;ui-button w150&quot; onclick=&quot;batReplace()&quot;&gt;
        ///                &lt;span class=&quot;button-inner&quot;&gt;
        ///                    &lt;span class=&quot;button-txt&quot;&gt;批量替换&lt;/span&gt;
        ///                    &lt;a href=&quot;javascript:;&quot;&gt;&lt;/a&gt;
        ///                &lt;/span&gt;
        ///            &lt;/span&gt;
        ///        &lt;/div&gt;
        ///
        ///     &lt;div id=&quot;msg&quot;&gt;&lt;/div [字符串的其余部分被截断]&quot;; 的本地化字符串。
        /// </summary>
        public static string archiveTagReplace {
            get {
                return ResourceManager.GetString("archiveTagReplace", resourceCulture);
            }
        }
        
        /// <summary>
        ///   查找类似 &lt;!DOCTYPE html&gt;
        ///&lt;html&gt;
        ///	&lt;head&gt;
        ///		&lt;title&gt;表格列列表&lt;/title&gt;
        ///        $css()
        ///	&lt;/head&gt;
        ///	&lt;body&gt;
        ///	 &lt;div class=&quot;tabarea&quot;&gt;
        ///
        ///    &lt;div class=&quot;tab_mini&quot;&gt;
        ///        &lt;a href=&quot;?module=table&amp;amp;action=all&quot;&gt;所有表&lt;/a&gt;
        ///        &lt;a href=&quot;javascript:;&quot;  class=&quot;current&quot;&gt;结构&lt;/a&gt;
        ///        &lt;a href=&quot;?module=table&amp;amp;action=createcolumn&amp;amp;tableid=${tableid}&quot; id=&quot;btnlink_create&quot;&gt;创建列&lt;/a&gt;
        ///        &lt;a href=&quot;?module=table&amp;action=rows&amp;control=true&amp;tableid=${tableid}&quot;&gt;数据&lt;/a&gt;
        ///        &lt;span class=&quot;meta&quot;&gt;表名：&lt;span&gt;${tablename}&lt;/span&gt;&lt;/spa [字符串的其余部分被截断]&quot;; 的本地化字符串。
        /// </summary>
        public static string columns {
            get {
                return ResourceManager.GetString("columns", resourceCulture);
            }
        }
        
        /// <summary>
        ///   查找类似 &lt;!DOCTYPE html&gt;
        ///&lt;html&gt;
        ///&lt;head&gt;
        ///    &lt;title&gt;创建列&lt;/title&gt;$css()
        ///&lt;/head&gt;
        ///&lt;body&gt;
        /// &lt;div class=&quot;tabarea&quot;&gt;
        ///
        ///    &lt;div class=&quot;tab_mini&quot;&gt;
        ///        &lt;a href=&quot;?module=table&amp;amp;action=all&quot;&gt;所有表&lt;/a&gt;
        ///        &lt;a href=&quot;?module=table&amp;amp;action=columns&amp;amp;tableid=${tableid}&quot;  class=&quot;current&quot; id=&quot;btnlink&quot;&gt;结构&lt;/a&gt;
        ///        &lt;a href=&quot;?module=table&amp;amp;action=createcolumn&amp;amp;tableid=${tableid}&quot; id=&quot;btnlink_create&quot;&gt;创建列&lt;/a&gt;
        ///        &lt;a href=&quot;?module=table&amp;amp;action=rows&amp;amp;control=true&amp;amp;tableid=${tableid}&quot;&gt;数据&lt;/a&gt;
        ///       [字符串的其余部分被截断]&quot;; 的本地化字符串。
        /// </summary>
        public static string editcolumn {
            get {
                return ResourceManager.GetString("editcolumn", resourceCulture);
            }
        }
        
        /// <summary>
        ///   查找类似 &lt;!DOCTYPE html&gt;
        ///&lt;html&gt;
        ///&lt;head&gt;
        ///    &lt;title&gt;创建表格&lt;/title&gt;
        ///    $css()
        ///    &lt;script type=&quot;text/javascript&quot; src=&quot;/public/assets/editor/kindeditor-all-min.js&quot;&gt;&lt;/script&gt;
        ///    &lt;script type=&quot;text/javascript&quot; src=&quot;/public/assets/editor/plugins/code/prettify.js&quot;&gt;&lt;/script&gt;
        ///&lt;/head&gt;
        ///&lt;body&gt;
        ///    &lt;div class=&quot;tabarea&quot;&gt;
        ///
        ///        &lt;div class=&quot;tab_mini&quot;&gt;
        ///            &lt;a href=&quot;?module=table&amp;amp;action=all&quot;&gt;所有表&lt;/a&gt;
        ///            &lt;a href=&quot;javascript:;&quot; class=&quot;current&quot; id=&quot;btnlink&quot;&gt;添加表&lt;/a&gt;
        ///        &lt;/div&gt;
        ///
        ///        &lt;div class [字符串的其余部分被截断]&quot;; 的本地化字符串。
        /// </summary>
        public static string edittable {
            get {
                return ResourceManager.GetString("edittable", resourceCulture);
            }
        }
        
        /// <summary>
        ///   查找类似 &lt;span style=&quot;color:red&quot;&gt;√&lt;/span&gt; 的本地化字符串。
        /// </summary>
        public static string errorText {
            get {
                return ResourceManager.GetString("errorText", resourceCulture);
            }
        }
        
        /// <summary>
        ///   查找 System.Drawing.Bitmap 类型的本地化资源。
        /// </summary>
        public static System.Drawing.Bitmap guest_avatar {
            get {
                object obj = ResourceManager.GetObject("guest_avatar", resourceCulture);
                return ((System.Drawing.Bitmap)(obj));
            }
        }
        
        /// <summary>
        ///   查找类似 function JR() { this.__VERSION__ = &apos;3.1&apos;; this.__WORKPATH__ = &apos;&apos;; this.__Extend_PROTOTYPE__ = true } JR.prototype = { __init__: function () { if (this.__Extend_PROTOTYPE__) { this.__extendingJsPrototype__() } var f = document.getElementsByTagName(&apos;SCRIPT&apos;); var s = f[f.length - 1]; var g = s.src; this.__WORKPATH__ = g.replace(/(\/)[^/]+$/, &apos;$1&apos;); if (!document.getElementsByClassName) { document.getElementsByClassName = function (a, b) { if (b &amp;&amp; !b.nodeName) { b = document.getElementById(b) } var c = (b ||  [字符串的其余部分被截断]&quot;; 的本地化字符串。
        /// </summary>
        public static string manage_js_min {
            get {
                return ResourceManager.GetString("manage_js_min", resourceCulture);
            }
        }
        
        /// <summary>
        ///   查找类似 &lt;!DOCTYPE html&gt;
        ///&lt;html&gt;
        ///	&lt;head&gt;
        ///		&lt;title&gt;会员列表&lt;/title&gt;
        ///    $css()
        ///	&lt;/head&gt;
        ///	&lt;body&gt;
        ///    
        ///	        &lt;div id=&quot;memberlist&quot;&gt;
        ///                ${memberRowsHtml}
        ///            &lt;/div&gt;
        ///            &lt;br /&gt;&lt;br /&gt;
        ///            &lt;div class=&quot;pager&quot;&gt;${pagerHtml}&lt;/div&gt;
        ///
        ///
        ///$js()
        ///&lt;script type=&quot;text/javascript&quot;&gt;
        ///  function showProfile(id) {
        ///    window.open(&apos;/member/profile/&apos; + id);
        ///  }
        ///  function deleteMember(t, id) {
        ///    var b = confirm(&apos;是否删除改会员的评论及文章信息?&apos;);
        ///    cms.xhr.post(&apos;/app.axd&apos;, &apos;do=member:delete:&apos; + id +  [字符串的其余部分被截断]&quot;; 的本地化字符串。
        /// </summary>
        public static string memberList {
            get {
                return ResourceManager.GetString("memberList", resourceCulture);
            }
        }
        
        /// <summary>
        ///   查找类似 &lt;span style=&quot;color:green&quot;&gt;√&lt;/span&gt; 的本地化字符串。
        /// </summary>
        public static string rightText {
            get {
                return ResourceManager.GetString("rightText", resourceCulture);
            }
        }
        
        /// <summary>
        ///   查找类似 /*
        ///   @control : 显示控制按钮
        ///
        ///*/
        ///&lt;!DOCTYPE html&gt;
        ///&lt;html&gt;
        ///	&lt;head&gt;
        ///		&lt;title&gt;表格行列表&lt;/title&gt;
        ///        $css()
        ///	&lt;/head&gt;
        ///	&lt;body&gt;
        ///	
        ///  &lt;div class=&quot;tabarea&quot;&gt;
        ///
        ///    &lt;div class=&quot;tab_mini&quot;&gt;
        ///        ${controlHtml}
        ///        &lt;span class=&quot;meta&quot;&gt;表名：&lt;span&gt;${tablename}&lt;/span&gt;&lt;/span&gt;
        ///    &lt;/div&gt;
        ///
        ///    &lt;table class=&quot;ui-table&quot; cellspacing=&quot;0&quot; cellpadding=&quot;0&quot; id=&quot;gd&quot;&gt;
        ///      ${columnsHtml}
        ///      ${rowsHtml}
        ///    &lt;/table&gt;
        ///    &lt;div class=&quot;pager&quot;&gt;${pagerHtml}&lt;/div&gt;
        ///&lt;/div&gt;
        ///
        ///$js()
        ///&lt;script type=&quot;text/javascript&quot;&gt;
        ///
        ///    var [字符串的其余部分被截断]&quot;; 的本地化字符串。
        /// </summary>
        public static string rows {
            get {
                return ResourceManager.GetString("rows", resourceCulture);
            }
        }
        
        /// <summary>
        ///   查找类似 &lt;!DOCTYPE html&gt;
        ///&lt;html&gt;
        ///	&lt;head&gt;
        ///		&lt;title&gt;模块列表&lt;/title&gt;
        ///    $css()
        ///    &lt;style type=&quot;text/css&quot;&gt;
        ///      #properties{padding:0 0 20px 0;}
        ///      #properties h2{font-size:12px;background:#f0f0f0;padding:5px 12px;}
        ///      #properties p{margin-left:10px;clear:both;}
        ///      span.add{position:absolute;top:7px;left:210px;}
        ///      #h1{padding:0 20px;}
        ///      .topbar{height:25px;line-height:25px;margin:10px 0 0;background:#f0f0f0;}
        ///      .topbar span{display:block;float:left;text-align:center;}
        ///      .tb_normal{wi [字符串的其余部分被截断]&quot;; 的本地化字符串。
        /// </summary>
        public static string setProperties {
            get {
                return ResourceManager.GetString("setProperties", resourceCulture);
            }
        }
        
        /// <summary>
        ///   查找类似 &lt;?xml version=&quot;1.0&quot; encoding=&quot;utf-8&quot; ?&gt;
        ///&lt;config&gt;
        ///  &lt;menu&gt;
        ///    &lt;bar id=&quot;site&quot; name=&quot;基本管理&quot;&gt;
        ///      
        ///      &lt;links title=&quot;欢迎使用&quot; toggle=&quot;true&quot; iconPos=&quot;-240|0&quot;&gt;
        ///        &lt;link href=&quot;?module=system&amp;amp;action=summary&quot; text=&quot;欢迎首页&quot; title=&quot;&quot; siteid=&quot;-1&quot;/&gt;
        ///        &lt;!--
        ///        &lt;link href=&quot;http://k3f.net/cms/cms/help.html&quot; text=&quot;帮助指南&quot; title=&quot;&quot; siteid=&quot;-1&quot;/&gt;
        ///        &lt;link href=&quot;http://k3f.net/cms/cms/about.html&quot; text=&quot;关于系统&quot; title=&quot;&quot; siteid=&quot;-1&quot;/&gt;--&gt;
        ///      &lt;/links&gt;
        ///
        ///      
        ///      &lt;links title=&quot;栏目管理&quot; toggle=&quot;tr [字符串的其余部分被截断]&quot;; 的本地化字符串。
        /// </summary>
        public static string sysset_conf {
            get {
                return ResourceManager.GetString("sysset_conf", resourceCulture);
            }
        }
        
        /// <summary>
        ///   查找类似 &lt;!DOCTYPE html&gt;
        ///&lt;html&gt;
        ///	&lt;head&gt;
        ///		&lt;title&gt;表列表&lt;/title&gt;
        ///        $css()
        ///	&lt;/head&gt;
        ///	&lt;body&gt;
        ///	 &lt;div class=&quot;tabarea&quot;&gt;
        ///
        ///    &lt;div class=&quot;tab_mini&quot;&gt;
        ///        &lt;a href=&quot;javascript:;&quot; class=&quot;current&quot;&gt;所有表&lt;/a&gt;
        ///        &lt;a href=&quot;?module=table&amp;amp;action=create&quot;&gt;创建表&lt;/a&gt;
        ///    &lt;/div&gt;
        ///
        ///    &lt;table class=&quot;ui-table&quot; cellspacing=&quot;0&quot; cellpadding=&quot;0&quot; id=&quot;gd&quot;&gt;
        ///      &lt;tr&gt;
        ///        &lt;th width=&quot;70&quot;&gt;表格编号&lt;/th&gt;
        ///        &lt;th width=&quot;100&quot;&gt;表名&lt;/th&gt;
        ///        &lt;th width=&quot;90&quot;&gt;列(点击编辑)&lt;/th&gt;
        ///        &lt;th width=&quot;90&quot;&gt;行(点击查看)&lt;/th&gt;
        ///        &lt;th wi [字符串的其余部分被截断]&quot;; 的本地化字符串。
        /// </summary>
        public static string tables {
            get {
                return ResourceManager.GetString("tables", resourceCulture);
            }
        }
        
        /// <summary>
        ///   查找类似 if (!window._path) {
        ///    window._path = &apos;admin&apos;;
        ///}
        ///window.sites = [];
        ///window.groupname = null;
        ///
        ///if (window.menuData == undefined) {
        ///    jr.xhr.get(window._path + &apos;?module=ajax&amp;action=appinit&apos;, function (x) {
        ///        var ip, address, md, username;
        ///        eval(x);
        ///        window.menuData = md;
        ///        jr.json.bind(document, { userName: username });
        ///    });
        ///    //window.menuData = [];
        ///}
        ///
        ///if (window.menuHandler == undefined) {
        ///    window.menuHandler = null;
        ///}
        ///
        ///function showGate() {
        ///    var [字符串的其余部分被截断]&quot;; 的本地化字符串。
        /// </summary>
        public static string ui_component {
            get {
                return ResourceManager.GetString("ui_component", resourceCulture);
            }
        }
    }
}
