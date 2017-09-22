<div class="side-menu sidebar-inverse">
    <nav class="navbar navbar-default" role="navigation">
        <div class="side-menu-container">
            <div class="navbar-header">
                <a class="navbar-brand" href="{{ route('voyager.dashboard') }}">
                    <div class="logo-icon-container">
                        <?php $admin_logo_img = Voyager::setting('admin_icon_image', ''); ?>
                        @if($admin_logo_img == '')
                            <img src="{{ voyager_asset('images/logo-icon-light.png') }}" alt="Logo Icon">
                        @else
                            <img src="{{ Voyager::image($admin_logo_img) }}" alt="Logo Icon">
                        @endif
                    </div>
                    <div class="title">{{Voyager::setting('admin_title', 'VOYAGER')}}</div>
                </a>
            </div><!-- .navbar-header -->

            <div class="panel widget center bgimage"
                 style="background-image:url({{ Voyager::image( Voyager::setting('admin_bg_image'), config('voyager.assets_path') . '/images/bg.jpg' ) }});">
                <div class="dimmer"></div>
                <div class="panel-content">
                    <img src="{{ $user_avatar }}" class="avatar" alt="{{ Auth::user()->name }} avatar">
                    <h4>{{ ucwords(Auth::user()->name) }}</h4>
                    <p>{{ Auth::user()->email }}</p>

                    <a href="{{ route('voyager.profile') }}" class="btn btn-primary">Profile</a>
                    <div style="clear:both"></div>
                </div>
            </div>

        </div>
        @if (Auth::user()->role_id==3)
          {!! menu('Teacher', 'admin_menu') !!}
        @elseif(Auth::user()->role_id==1)
          {!! menu('admin', 'admin_menu') !!}
        @elseif(Auth::user()->role_id==4)
          {!! menu('Director', 'admin_menu') !!}
        @elseif(Auth::user()->role_id==5)
          {!! menu('Parent', 'admin_menu') !!}
      @endif

    </nav>
</div>
