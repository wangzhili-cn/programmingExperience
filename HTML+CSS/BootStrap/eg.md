---
bootstrap事例文件
---  
```html
<!DOCTYPE html PUBLIC "-//W3C//DTD XHTML 1.0 Transitional//EN" "http://www.w3.org/TR/xhtml1/DTD/xhtml1-transitional.dtd">
<html xmlns="http://www.w3.org/1999/xhtml">
<head>
    <title></title>
    <!-- 最新版本的 Bootstrap 核心 CSS 文件 -->
    <link rel="stylesheet" href="https://cdn.bootcss.com/bootstrap/3.3.7/css/bootstrap.min.css"
        integrity="sha384-BVYiiSIFeK1dGmJRAkycuHAHRg32OmUcww7on3RYdg4Va+PmSTsz/K68vbdEjh4u"
        crossorigin="anonymous">
    <!-- 可选的 Bootstrap 主题文件（一般不用引入） -->
    <link rel="stylesheet" href="https://cdn.bootcss.com/bootstrap/3.3.7/css/bootstrap-theme.min.css"
        integrity="sha384-rHyoN1iRsVXV4nD0JutlnGaslCJuC7uwjduW9SVrLvRYooPp2bWYgmgJQIXwl/Sp"
        crossorigin="anonymous">
    <script type="text/javascript" src="http://apps.bdimg.com/libs/jquery/2.1.4/jquery.min.js"></script>
    <!-- 最新的 Bootstrap 核心 JavaScript 文件 -->
    <script src="https://cdn.bootcss.com/bootstrap/3.3.7/js/bootstrap.min.js" integrity="sha384-Tc5IQib027qvyjSMfHjOMaLkfuWVxZxUPnCJA7l2mCWNIpG9mGCD8wGNIcPD7Txa"
        crossorigin="anonymous"></script>
</head>
<body>
    <button class="btn btn-info">
        hello world
    </button>
    <span class="h1">hello world<small>abcd</small></span>
</body>
</html>
```
```html
<!DOCTYPE html PUBLIC "-//W3C//DTD XHTML 1.0 Transitional//EN" "http://www.w3.org/TR/xhtml1/DTD/xhtml1-transitional.dtd">
<html xmlns="http://www.w3.org/1999/xhtml">
<head>
    <title></title>
    <!--  <link rel="stylesheet" href="https://cdn.bootcss.com/bootstrap/3.3.7/css/bootstrap.min.css"
        integrity="sha384-BVYiiSIFeK1dGmJRAkycuHAHRg32OmUcww7on3RYdg4Va+PmSTsz/K68vbdEjh4u"
        crossorigin="anonymous">
    <link rel="stylesheet" href="https://cdn.bootcss.com/bootstrap/3.3.7/css/bootstrap-theme.min.css"
        integrity="sha384-rHyoN1iRsVXV4nD0JutlnGaslCJuC7uwjduW9SVrLvRYooPp2bWYgmgJQIXwl/Sp"
        crossorigin="anonymous">
    <script type="text/javascript" src="http://apps.bdimg.com/libs/jquery/2.1.4/jquery.min.js"></script>
    <script src="https://cdn.bootcss.com/bootstrap/3.3.7/js/bootstrap.min.js" integrity="sha384-Tc5IQib027qvyjSMfHjOMaLkfuWVxZxUPnCJA7l2mCWNIpG9mGCD8wGNIcPD7Txa"
        crossorigin="anonymous"></script>-->
    <link href="BootStrap/css/bootstrap.css" rel="stylesheet" type="text/css" />
    <link href="BootStrap/css/bootstrap-theme.css" rel="stylesheet" type="text/css" />
    <script type="text/javascript" src="http://apps.bdimg.com/libs/jquery/2.1.4/jquery.min.js"></script>
    <script src="BootStrap/js/bootstrap.js" type="text/javascript"></script>
    <style type="text/css">
        .glyphicon-asterisk
        {
        }
    </style>
</head>
<body>
    <button class="btn btn-info">
        hello world
    </button>
    <span class="h1">hello world<small>abcd</small></span>
    <table class="table table-responsive table-bordered table-hover">
        <tr>
            <td>
                abcd
            </td>
            <td>
                abcd
            </td>
            <td>
                abcd
            </td>
            <td>
                abcd
            </td>
            <td>
                abcd
            </td>
        </tr>
        <tr>
            <td>
                abcd
            </td>
            <td>
                abcd
            </td>
            <td>
                abcd
            </td>
            <td>
                abcd
            </td>
            <td>
                abcd
            </td>
        </tr>
        <tr class="active">
            <td>
                abcd
            </td>
            <td>
                abcd
            </td>
            <td>
                abcd
            </td>
            <td>
                abcd
            </td>
            <td>
                abcd
            </td>
        </tr>
        <tr class="danger">
            <td>
                abcd
            </td>
            <td>
                abcd
            </td>
            <td>
                abcd
            </td>
            <td>
                abcd
            </td>
            <td>
                abcd
            </td>
        </tr>
    </table>
    <form class="form-inline">
    <div class="form-group">
        <input type="text" class="form-control" placeholder="这是一个输入框" />
    </div>
    <div class="form-group has-error">
        <select class="form-control">
            <option value="">北京</option>
            <option value="">北京</option>
            <option value="">北京</option>
            <option value="">北京</option>
        </select>
    </div>
    <div class="form-group">
        <input type="text" class="form-control input-lg" placeholder="这是一个输入框" />
    </div>
    <div class="form-group">
        <input type="text" class="form-control" placeholder="这是一个输入框" />
    </div>
    </form>
    <button class="btn btn-info">
        这是一个按钮</button>
    <img class="img-thumbnail" style="width: 100px; height: 100px;" src="1450581857164.jpeg" />
    <span class="glyphicon glyphicon-asterisk" style="font-size: 50px;"></span>
    <div class="btn-group">
        <button class="btn btn-control btn-default">
            <label class="glyphicon glyphicon-circle-arrow-down">
                download</label>
        </button>
    </div>
    <div class="dropdown">
        <button class="btn btn-default dropdown-toggle" type="button" data-toggle="dropdown"
            id="dropdownMenu1" aria-haspopup="true" aria-expanded="false">
            download <span class="caret"></span>
        </button>
        <ul class="dropdown-menu" aria-leballedby="dropsownMenu1">
            <li><a href="#">北京</a></li>
            <li class="" divider></li>
            <li><a href="#">上海</a></li>
            <li class="" divider></li>
            <li><a href="#">广州</a></li>
            <li class="" divider></li>
            <li><a href="#">深圳</a></li>
        </ul>
    </div>
    <ul class="nav nav-tabs">
        <li class="active"><a href="#">慕课网1</a></li>
        <li><a href="#">慕课网2</a></li>
        <li><a href="#">慕课网3</a></li>
    </ul>
    胶囊式
    <ul class="nav nav-pills">
        <li class="active"><a href="#">慕课网1</a></li>
        <li><a href="#">慕课网2</a></li>
        <li><a href="#">慕课网3</a></li>
    </ul>
    垂直
    <ul class="nav nav-pills nav-stacked">
        <li class="active"><a href="#">慕课网1</a></li>
        <li><a href="#">慕课网2</a></li>
        <li><a href="#">慕课网3</a></li>
    </ul>
    <nav>
		<ul class="pager">
			<li class="previous"><a href="#">向左</a></li>
			<li class="next"><a href="#">向右</a></li>
		</ul>
		<ul class="pagination pagination-lg">   
			<li class="active"><a href="#">1</a></li>
			<li><a href="#">2</a></li>
			<li><a href="#">3</a></li>
			<li><a href="#">4</a></li>
			<li><a href="#">5</a></li>
		</ul>
	</nav>
    <div class="progress">
        <div class="progress-bar progress-bar-success progress-bar-striped" style="width: 80%;">
            20%</div>
    </div>
    <ul class="list-group">
        <li class="list-group-item active">这是一个列表 <span class="badge">10</span> </li>
        <li class="list-group-item disabled">这是一个列表 <span class="badge">10</span> </li>
        <li class="list-group-item list-group-item-info">这是一个列表 <span class="badge">10</span>
        </li>
        <li class="list-group-item">这是一个列表 <span class="badge">10</span> </li>
    </ul>
    <div class="panel panel-default">
        <!-- 蓝色panel-default ......可以是别的等等-->
        <div class="panel-heading">
            弹出层
        </div>
        <div class="panel-body">
            这是面板的具体内容
        </div>
        <div class="panel-footer">
            脚注
        </div>
    </div>
    <button class="btn btn-danger btn-lg" data-toggle="modal" data-target="#danger">
        这是测试按钮
    </button>
    <div id="danger" class="modal fade">
        <div class="modal-dialog">
            <div class="modal-content">
                <div class="modal-header">
                    <button type="button" class="close" data-dismiss="modal">
                        <span>&times;</span> <span class="sr-only">关闭弹窗</span>
                    </button>
                    <h4 class="modal-title">
                        标题</h4>
                </div>
                <div class="modal-body">
                    慕课网
                </div>
                <div class="modal-footer">
                    <button class="btn btn-default" type="button" data-dismiss="modal">
                        关闭
                    </button>
                    <button class="btn btn-primary" tyoe="button">
                        保存</button>
                </div>
            </div>
        </div>
    </div>
</body>
</html>
```
