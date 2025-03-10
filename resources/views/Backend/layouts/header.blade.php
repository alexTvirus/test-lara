  <header class="main-header">
    <!-- Logo -->
    <a href="{{asset('/dashboard')}}" class="logo">
      <!-- mini logo for sidebar mini 50x50 pixels -->
      <span class="logo-mini"><b>firecomic</b></span>
      <!-- logo for regular state and mobile devices -->
      <span class="logo-lg"><b>fire</b>comic</span>
    </a>
    <!-- Header Navbar: style can be found in header.less -->
    <nav class="navbar navbar-static-top">
      <!-- Sidebar toggle button-->
      <a href="#" class="sidebar-toggle" data-toggle="push-menu" role="button">
        <span class="sr-only">Toggle navigation</span>
      </a>

      <div class="navbar-custom-menu">
        <ul class="nav navbar-nav">
          <li>
            <div class="languages" style="margin-bottom:5px;">
              </a>
            </div>
          </li>
          <!-- Notifications: style can be found in dropdown.less -->

          <li class="dropdown notifications-menu">
            <a href="#" class="dropdown-toggle" data-toggle="dropdown">
              <i class="fa fa-bell-o"></i>
              <span class="label label-warning">10</span>
            </a>
            <ul class="dropdown-menu">
              <li class="header">You have 10 notifications</li>
              <li>
                <!-- inner menu: contains the actual data -->
                <ul class="menu">
                  <li>
                    <a href="#">
                      <i class="fa fa-users text-aqua"></i> 5 new members joined today
                    </a>
                  </li>
                  <li>
                    <a href="#">
                      <i class="fa fa-warning text-yellow"></i> Very long description here that may not fit into the
                      page and may cause design problems
                    </a>
                  </li>
                  <li>
                    <a href="#">
                      <i class="fa fa-users text-red"></i> 5 new members joined
                    </a>
                  </li>
                  <li>
                    <a href="#">
                      <i class="fa fa-shopping-cart text-green"></i> 25 sales made
                    </a>
                  </li>
                  <li>
                    <a href="#">
                      <i class="fa fa-user text-red"></i> You changed your username
                    </a>
                  </li>
                </ul>
              </li>
              <li class="footer"><a href="#">View all</a></li>
            </ul>
          </li>

          <!-- User Account: style can be found in dropdown.less -->
          <li class="dropdown user user-menu" style="height: 50px" >
            <a href="#" class="dropdown-toggle" data-toggle="dropdown" style="height: 100%">
              <img class="user-image" alt="User Image" src="{!! asset('assets/admin/templates/images/dist/img/user2-160x160.jpg') !!}" />
            </a>
            <ul class="dropdown-menu">
              <!-- User image -->
              <li class="user-header">

                <img src="{!! asset('assets/admin/templates/images/dist/img/user2-160x160.jpg') !!}" class="img-circle" alt="User Image">

                <p>
                </p>

              </li>
              <!-- Menu Footer-->
              <li class="user-footer" >
                <div class="pull-left">
                    <button type="submit" class="btn btn-primary btn-block btn-flat">{{ __(trans('common.header.update_profile')) }}</button>
                </div>

                <div class="pull-right">
                    <form action="{{route('logout')}}" id="logout-employee" onSubmit="return confirmAction('Are you sure logout?')">
                        <button type="submit" class="btn btn-primary btn-block btn-flat">{{ __(trans('common.header.logout')) }}</button>
                    </form>

                </div>
              </li>
            </ul>
          </li>

        </ul>
      </div>
    </nav>
  </header>
