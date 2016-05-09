   <div class="panel">
        <div class="panel-heading"> 
            <ul class="tabs nav panel-tabs-border panel-tabs panel-tabs-left">
                <li class="active">
                    <a href="#cat_info">
                        Danh sách                    </a>
                </li>
            </ul>
        </div>

        <div class="panel-body pn mt10">
            <table class="footable table table-striped table-hover table-bordered admin-form fs13 footable-loaded">
                <thead>
                    <tr>
                        <th class="text-left" data-toggle="true">Email</th>
                        <th class="text-left">Tên đầy đủ</th>
                        <th>Username</th>
                        <th>Nhóm quản trị</th>
                        <th>Hành động</th>
                    </tr>
                </thead>
                <tbody>
                <?php foreach ($listuser as $key => $value): ?>
                    <tr>
                        <td>
                            <span class="footable-toggle"></span>
                            <i class="fa fa-lock"></i>
                            <?= $value['email']; ?>
                        </td>
                        <td class="text-left"><?= $value['last_name'] . ' ' . $value['first_name']; ?></td>
                        <td class="text-center"><?= $value['username']; ?></td>
                        <td class="text-center"> Super admin</td>
                        <td class="text-center"> </td>
                    </tr>
                <?php endforeach ?>
                </tbody>
            </table>
        </div>
    </div>