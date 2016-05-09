<div id="main">
            <!-- Start: header -->
            <!-- Common view -->
            <!-- Message -->
            <header class="navbar navber-fixed-top bg-info">
                <?php $this->load->view('admin/layout/header.tpl'); ?>
            </header>
            <!-- End: header -->
            <!-- Start: Sidebar -->
            <aside id="sidebar_left" class="nano nano-primary">
                <?php $this->load->view('admin/layout/sidebar.left.tpl') ?>
            </aside>
            <!-- End: Sidebar -->
            <!-- Start: Content-Wrapper -->
            <section id="content_wrapper">
                <header id="topbar" class="affix">
                    <?php $this->load->view('admin/layout/topbar.tpl'); ?>
                </header>
                <section id="content">
                    <?php $this->load->view("admin/layout/content.$main.tpl");?>
                </section>
            </section>
            <!-- End: Content-Wrapper -->
        </div>
        <!-- End: Main -->
        <script type="text/javascript" src="<?= public_url(); ?>/admin/ipanel/assets/js/main.js"></script>

        <script type="text/javascript">
            jQuery(document).ready(function () {
                "use strict";
                // Init Theme Core      
                Core.init({
                    sbm: "sb-l-c",
                });

                //FooTable
                $(function () {
                    $('.footable').footable();
                });

            });
        </script>