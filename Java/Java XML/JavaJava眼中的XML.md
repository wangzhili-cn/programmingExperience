---
使用Java生成解析xml文档  
---  
> DOM方式生成XML文档  
```java
private static void createXML() {
		DocumentBuilderFactory dbf = DocumentBuilderFactory.newInstance();
		try {
			DocumentBuilder db = dbf.newDocumentBuilder();
			Document d = db.newDocument();
			Element enode = d.createElement("books");
			enode.setAttribute("hello", "how");
			d.appendChild(enode);
			// 设置xmlStandalone为true
			d.setXmlStandalone(true);
			Element e = d.createElement("bookstore");
			e.setAttribute("id", "1");
			Element e2 = d.createElement("book");
			enode.appendChild(e);
			e2.setTextContent("冰与火之歌");
			e.appendChild(e2);
			Element e3 = d.createElement("name");
			e3.setTextContent("小王子");
			e.appendChild(e3);
			//
			Element E = d.createElement("bookstore");
			E.setAttribute("id", "2");
			Element E2 = d.createElement("book");
			E2.setTextContent("我们的歌");
			enode.appendChild(E);
			E.appendChild(E2);
			Element E3 = d.createElement("name");
			E3.setTextContent("goodlift");
			E.appendChild(E3);
			//
			TransformerFactory tff = TransformerFactory.newInstance();
			Transformer tf = tff.newTransformer();
			// 设置
			tf.setOutputProperty(OutputKeys.INDENT, "yes");
			tf.transform(new DOMSource(d), new StreamResult(new File("rear.xml")));
		} catch (ParserConfigurationException e) {
			// TODO Auto-generated catch block
			e.printStackTrace();
		} catch (TransformerConfigurationException e1) {
			// TODO Auto-generated catch block
			e1.printStackTrace();
		} catch (TransformerException e1) {
			// TODO Auto-generated catch block
			e1.printStackTrace();
		}
	}
```  
- 解析XML文档  
```java
private static void parseXML() {
		// TODO Auto-generated method stub
		DocumentBuilderFactory dbf = DocumentBuilderFactory.newInstance();
		try {
			DocumentBuilder db = dbf.newDocumentBuilder();
			Document d = db.parse("rear.xml");
			NodeList nl = d.getElementsByTagName("book");
			System.out.println(nl.getLength());
			for (int i = 0; i < nl.getLength(); i++) {
				Node nitem = nl.item(i);
				NamedNodeMap nnm = nitem.getAttributes();
				System.out.println(nnm.getLength());
				for (int j = 0; j < nnm.getLength(); j++) {
					nnm.item(j).getNodeName();
				}
			}
		} catch (ParserConfigurationException e) {
			// TODO Auto-generated catch block
			e.printStackTrace();
		} catch (SAXException e) {
			// TODO Auto-generated catch block
			e.printStackTrace();
		} catch (IOException e) {
			// TODO Auto-generated catch block
			e.printStackTrace();
		}
	}
```
