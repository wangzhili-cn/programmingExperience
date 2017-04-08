---
不同浏览器对DOM解析略有差异
---
> 基本笔记  
1. 理解事件流  
2. 使用事件处理程序  
3. 不同的事件类型  
- 事件流  
  事件流描述的是从页面中接受事件的顺序。  
  IE的事件流是事件冒泡流，而Netscape的事件流是事件捕获流  
1. 事件冒泡  
  事件冒泡，即事件最开始由最具体的元素(文档中嵌套层次最深的那个节点)接收，然后逐级向上转播至最不具体的节点(文档)。  
2. 事件捕获  
``事件捕获的思想是不太具体的节点应该更早接收到事件，而最具体的节点最后接收到事件。  
- 事件处理程序  
1. HTML事件处理程序  
2. DOM0级事件处理程序  
3. DOM2级事件处理程序  
    DOM2级事件定义了两个方法：用于处理指定和删除事件处理程序的操作：addEventListener()和removeEventListener()。  
    它们都接收三个参数：要处理的事件名、作为事件处理程序的函数和一个布尔值。  
4. IE事件处理程序  
    attachEvent()添加事件  
    detachEvent()删除事件  
    这两个方法接收相同的两个参数：事件处理程序名称与事件处理函数  
5. 跨浏览器的事件处理程序  
- 事件对象    
  事件对象event  
  1.DOM中的事件对象  
    (1)、type:获取事件类型  
    (2)、target：事件目标  
    (3)、stopPropagation() 阻止事件冒泡  
    (4)、preventDefault() 阻止事件的默认行为  
  2.IE中的事件对象  
    (1)、type:获取事件类型  
    (2)、srcElement：事件目标  
    (3)、cancelBubble=true阻止事件冒泡  
    (4)、returnValue=false阻止事件的默认行为  
> HTML代码  
```javascript
<html>
 <head>
   <title>事件流</title>
   <meta charset="utf-8">
   <script src="js/event.js"></script>
   <script src="js/script.js"></script>
   <body>
      <div id="box">
         <input type="button" value="按钮" id="btn" onclick="showMes()">
         <input type="button" value="按钮2" id="btn2">
         <input type="button" value="按钮3" id="btn3">
         <a href="event.html" id="go">跳转</a>
      </div>
   </body>
 </head>
 ```
 > Javascript代码  
 ```javascript
 window.onload=function(){
  var go=document.getElementById('go'),
      box=document.getElementById('box');

  eventUtil.addHandler(box,'click',function(){
  	alert('我是整个父盒子');
  });

  eventUtil.addHandler(go,'click',function(e){
  	//e=eventUtil.getEvent(e);
  	e=e || window.event;
  	alert(eventUtil.getElement(e).nodeName);
  	eventUtil.preventDefault(e);
  	eventUtil.stopPropagation(e);
  });

}
  var eventUtil={
         	// 添加句柄
         	addHandler:function(element,type,handler){
               if(element.addEventListener){
                 element.addEventListener(type,handler,false);
               }else if(element.attachEvent){
                 element.attachEvent('on'+type,handler);
               }else{
                 element['on'+type]=handler;
               }
         	},
         	// 删除句柄
         	removeHandler:function(element,type,handler){
               if(element.removeEventListener){
                 element.removeEventListener(type,handler,false);
               }else if(element.detachEvent){
                 element.detachEvent('on'+type,handler);
               }else{
                 element['on'+type]=null;
               }
         	},
          getEvent:function(event){
            return event?event:window.event;
          },
          getType:function(event){
            return event.type;
          },
          getElement:function(event){
            return event.target || event.srcElement;
          },
          preventDefault:function(event){
            if(event.preventDefault){
              event.preventDefault();
            }else{
              event.returnValue=false;
            }
          },
         stopPropagation:function(event){
           if(event.stopPropagation){
             event.stopPropagation();
           }else{
             event.cancelBubble=true;
           }
         }
  }
  ```

