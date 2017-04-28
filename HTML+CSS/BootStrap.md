---
BootStrap
---
> http://getbootstrap.com/  
  
> 相应式布局medio-Query  
```HTML
<!DOCTYPE html>
<html>
<head>
	<title>test</title>
	<link rel="stylesheet" type="text/css" href="main.css" media="only screen and (max-width:480px)"/>
	<style type="text/css">
		@media screen and (min-width: 480px){
			body{background-color: blue;}
		}
	</style>
</head>
<body>

</body>
</html>

main.css文件内容 body{background-color: red;}
```  

> bootstrap 入门示例  
```HTML
<!DOCTYPE html PUBLIC "-//W3C//DTD XHTML 1.0 Transitional//EN" "http://www.w3.org/TR/xhtml1/DTD/xhtml1-transitional.dtd">
<html xmlns="http://www.w3.org/1999/xhtml">
<head>
    <title>blog</title>
    <link href="http://cdn.static.runoob.com/libs/bootstrap/3.3.7/css/bootstrap.min.css"
        rel="stylesheet">
    <script src="http://cdn.static.runoob.com/libs/bootstrap/3.3.7/css/bootstrap-theme.min.css"></script>
    <script src="http://cdn.static.runoob.com/libs/jquery/2.1.1/jquery.min.js"></script>
    <script src="http://cdn.static.runoob.com/libs/bootstrap/3.3.7/js/bootstrap.min.js"></script>
</head>
<body>
    <nav class="navbar navbar-inver">
    <div class="container">
  <div class="container-fluid">
    <!-- Brand and toggle get grouped for better mobile display -->
    <div class="navbar-header">
      <button type="button" class="navbar-toggle collapsed" data-toggle="collapse" data-target="#bs-example-navbar-collapse-1" aria-expanded="false">
        <span class="sr-only">Toggle navigation</span>
        <span class="icon-bar"></span>
        <span class="icon-bar"></span>
        <span class="icon-bar"></span>
      </button>
      <a class="navbar-brand" href="#">Fizz的杂货铺</a>
    </div>

    <!-- Collect the nav links, forms, and other content for toggling -->
    <div class="collapse navbar-collapse" id="bs-example-navbar-collapse-1">
      <ul class="nav navbar-nav">
        <li class="active"><a href="#">Home <span class="sr-only">(current)</span></a></li>
        <li><a href="#">Welcome</a></li>
        <li class="dropdown">
          <a href="#" class="dropdown-toggle" data-toggle="dropdown" role="button" aria-haspopup="true" aria-expanded="false">Info <span class="caret"></span></a>
          <ul class="dropdown-menu">
            <li><a href="#">Action</a></li>
            <li><a href="#">Another action</a></li>
            <li><a href="#">Something else here</a></li>
            <li role="separator" class="divider"></li>
            <li><a href="#">Separated link</a></li>
            <li role="separator" class="divider"></li>
            <li><a href="#">One more separated link</a></li>
          </ul>
        </li>
      </ul>
      </div>
    </div><!-- /.navbar-collapse -->
  </div><!-- /.container-fluid -->
</nav>
    <div class="container">
        <div class="row">
            <div class="col-sm-9">
                <p class="pull-right visible-xs">
                    <button class="btn-xs btn btn-primary">
                        Toggle</button>
                </p>
                <div class="jumbotron">
                    <h1>
                        Hello, world!</h1>
                    <p>
                        ...</p>
                    <p>
                        <a class="btn btn-primary btn-lg" href="#" role="button">Learn more</a></p>
                </div>
                <div class="row">
                    <div class="col-6 col-sm-6 col-lg-4">
                        <h2>
                            headline</h2>
                        <p>
                            loVe loVe loVe loVe loVe loVe loVe loVe loVe loVe loVe loVe loVe loVe loVe
                        </p>
                        <a class="btn btn-default">View Detail</a>
                    </div>
                    <div class="col-6 col-sm-6 col-lg-4">
                        <h2>
                            headline</h2>
                        <p>
                            loVe loVe loVe loVe loVe loVe loVe loVe loVe loVe loVe loVe loVe loVe loVe
                        </p>
                        <a class="btn btn-default">View Detail</a>
                    </div>
                    <div class="col-6 col-sm-6 col-lg-4">
                        <h2>
                            headline</h2>
                        <p>
                            loVe loVe loVe loVe loVe loVe loVe loVe loVe loVe loVe loVe loVe loVe loVe
                        </p>
                        <a class="btn btn-default">View Detail</a>
                    </div>
                    <div class="col-6 col-sm-6 col-lg-4">
                        <h2>
                            headline</h2>
                        <p>
                            loVe loVe loVe loVe loVe loVe loVe loVe loVe loVe loVe loVe loVe loVe loVe
                        </p>
                        <a class="btn btn-default">View Detail</a>
                    </div>
                    <div class="col-6 col-sm-6 col-lg-4">
                        <h2>
                            headline</h2>
                        <p>
                            loVe loVe loVe loVe loVe loVe loVe loVe loVe loVe loVe loVe loVe loVe loVe
                        </p>
                        <a class="btn btn-default">View Detail</a>
                    </div>
                    <div class="col-6 col-sm-6 col-lg-4">
                        <h2>
                            headline</h2>
                        <p>
                            loVe loVe loVe loVe loVe loVe loVe loVe loVe loVe loVe loVe loVe loVe loVe
                        </p>
                        <a class="btn btn-default">View Detail</a>
                    </div>
                </div>
            </div>
            <div class="col-sm-3">
                <ul class="list-group">
                    <li class="list-group-item">Cras justo odio</li>
                    <li class="list-group-item">Dapibus ac facilisis in</li>
                    <li class="list-group-item">Morbi leo risus</li>
                    <li class="list-group-item">Porta ac consectetur ac</li>
                    <li class="list-group-item">Vestibulum at eros</li>
                </ul>
            </div>
        </div>
    </div>
</body>
</html>
```
