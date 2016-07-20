```python
import urllib.request,os,hashlib; h = '2915d1851351e5ee549c20394736b442' + '8bc59f460fa1548d1514676163dafc88'; pf = 'Package Control.sublime-package'; ipp = sublime.installed_packages_path(); urllib.request.install_opener( urllib.request.build_opener( urllib.request.ProxyHandler()) ); by = urllib.request.urlopen( 'http://packagecontrol.io/' + pf.replace(' ', '%20')).read(); dh = hashlib.sha256(by).hexdigest(); print('Error validating download (got %s instead of %s), please try manual install' % (dh, h)) if dh != h else open(os.path.join( ipp, pf), 'wb' ).write(by)
```

或下载[Package Control.sublime-package](https://sublime.wbond.net/Package%20Control.sublime-package)并复制到Installed Packages目录



# [JsFormat](https://github.com/jdc0589/JsFormat)

这是一款将JS格式化的插件

同样使用Package Control安装JsFormat插件后

即可在JS文件中通过鼠标右键->JsFormat或键盘快捷键`Ctrl+Alt+F`对JS进行格式化



# [SideBarEnhancements](https://github.com/titoBouzout/SideBarEnhancements)

右键菜单增强插件

# [Tag](https://github.com/SublimeText/Tag)

这是HTML/XML标签缩进、补全、排版和校验工具


# [SublimeCodeIntel](https://github.com/SublimeCodeIntel/SublimeCodeIntel)

`.codeintel` 目录加入`config`

```json
{
  "JavaScript":{
  "javascriptExtraPaths":[]
  }
}
```

# [Autoprefixer](https://github.com/sindresorhus/sublime-autoprefixer)

css -webkit- -o- 匹配

# [BracketHighlighter](https://github.com/facelessuser/BracketHighlighter)

括号匹配
