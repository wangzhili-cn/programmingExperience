---
xml同config文件的区别
---
> config文件是xml文件的一个子集，只不过config文件是有系统自定义的一些节点规则，语法为xml。  
前者:  
用在web.config或者app.config之类. 
<appSettings>是系统约定的节点,约定在这个节点下的所有<add />节点会被System.Configuration.ConfigurationManager.AppSetting读到.  
后者:  
完全的自定义接点,appSettings表示什么意思,add表示什么意思将在自己写的xml解析方法里指定和使用.  
简单来说,config是xml的一个子集.  
通常的xml都是只定义基本语法,至于节点的层次,节点格式,节点的含义,节点怎么被解析都是你自己定义.使得你的xml文件能和你的xml解析方法对应.  
而web.config,app.config这类,是Microsoft和软件作者已经定义好了节点意义，你只需要遵守他的格式和规则，就能达到配置作用。  
打个可能不太好的比方：  
xml文件本身是扑克牌.  
config是斗地主。  
你用config，就不需要自己制定规则，按照它的规则打就行。很方便，但是你不能违反他的规则。  
而你自己写xml，还要先制定好规则，规则怎么定都随便你，然后按照这个规则出牌.  
当然，这些都有一个大前提，都满足xml节点规范，你不能制定扑克牌的规则中放入几个麻将牌....  
