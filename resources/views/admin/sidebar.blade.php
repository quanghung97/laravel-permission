<div class="col-md-3">
    <div class="card">
        <div class="card-header">
            Sidebar
        </div>

        <div class="card-body">
            <ul class="nav" role="tablist">
                <li role="presentation">
                    <a href="{{ url('/admin') }}">
                        Dashboard
                    </a>
                </li>
            </ul>
        </div>
        <div class="card-body">
            <ul class="nav" role="tablist">
                <li role="presentation">
                    <a href="{{ url('/admin/role') }}">
                        Role
                    </a>
                </li>
            </ul>
        </div>
        <div class="card-body">
            <ul class="nav" role="tablist">
                <li role="presentation">
                    <a href="{{ url('/admin/permission') }}">
                        Permission
                    </a>
                </li>
            </ul>
        </div>
    </div>
</div>
