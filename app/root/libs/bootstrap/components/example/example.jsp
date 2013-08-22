<%@page session="false"%><%
%><%@taglib prefix="cq"  uri="http://www.day.com/taglibs/cq/1.0" %><%
%><cq:defineObjects/>
<!DOCTYPE html>
<html lang="en">
  <head>
    <cq:includeClientLib css="bootstrap" />
    <title>Bootstrap Example</title>
  </head>
  <body>
  <div class="container">
    <h1>Welcome to CQ-Bootstrap</h1>
    <h2>Grid example</h2>
    <div class="row">
      <div class="col-md-1">1</div>
      <div class="col-md-1">2</div>
      <div class="col-md-1">3</div>
      <div class="col-md-1">4</div>
      <div class="col-md-1">5</div>
      <div class="col-md-1">6</div>
      <div class="col-md-1">7</div>
      <div class="col-md-1">8</div>
      <div class="col-md-1">9</div>
      <div class="col-md-1">10</div>
      <div class="col-md-1">11</div>
      <div class="col-md-1">12</div>
    </div>

    <h2>From example</h2>
    <div class="row">
      <form class="form-inline" role="form">
        <div class="form-group">
          <label class="sr-only" for="exampleInputEmail2">Email address</label>
          <input type="email" class="form-control" id="exampleInputEmail2" placeholder="Enter email">
        </div>
        <div class="form-group">
          <label class="sr-only" for="exampleInputPassword2">Password</label>
          <input type="password" class="form-control" id="exampleInputPassword2" placeholder="Password">
        </div>
        <div class="checkbox">
          <label>
            <input type="checkbox"> Remember me
          </label>
        </div>
        <button type="submit" class="btn btn-default">Sign in</button>
      </form>
    </div>

    <h2>Buttons</h2>
    <div class="row">
      <button type="button" class="btn btn-default btn-lg">
        <span class="glyphicon glyphicon-star"></span> Star
      </button>
    </div>

    <h2>Modal example</h2>
    <div class="row">
      <!-- Button trigger modal -->
        <a data-toggle="modal" href="#myModal" class="btn btn-primary btn-lg">Launch demo modal</a>

        <!-- Modal -->
        <div class="modal fade" id="myModal" tabindex="-1" role="dialog" aria-labelledby="myModalLabel" aria-hidden="true">
          <div class="modal-dialog">
            <div class="modal-content">
              <div class="modal-header">
                <button type="button" class="close" data-dismiss="modal" aria-hidden="true">&times;</button>
                <h4 class="modal-title">Modal title</h4>
              </div>
              <div class="modal-body">
                ...
              </div>
              <div class="modal-footer">
                <button type="button" class="btn btn-default" data-dismiss="modal">Close</button>
                <button type="button" class="btn btn-primary">Save changes</button>
              </div>
            </div><!-- /.modal-content -->
          </div><!-- /.modal-dialog -->
        </div><!-- /.modal -->
    </div>
  </div>
  <cq:includeClientLib js="bootstrap" />
  </body>
</html>
