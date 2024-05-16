<?php $this->load->view('backend/header'); ?>
<?php $this->load->view('backend/sidebar'); ?>
      <div class="page-wrapper">
            <div class="message"></div>
            <div class="row page-titles">
                <div class="col-md-5 align-self-center">
                    <h3 class="text-themecolor"><i class="fa fa-bandcamp" style="color:#2acdb4"></i>&nbsp Dashboard</h3>
                </div>
                <div class="col-md-7 align-self-center">
                    <ol class="breadcrumb">
                        <li class="breadcrumb-item"><a href="javascript:void(0)">Home</a></li>
                        <li class="breadcrumb-item active">Dashboard</li>
                    </ol>
                </div>
            </div>
            <!-- Container fluid  -->
            <!-- ============================================================== -->
            <div class="container-fluid ">
                <!-- ============================================================== -->
                <!-- Row -->
                <div class="row justify-content-center ">
                    <!-- Column -->
                    <div class="col-lg-3 col-md-6">
                        <div class="card" style="border-radius: 20px;">
                            <div class="card-body">
                                <div class="d-flex flex-md-column">
                                    <div class="round align-self-center round-success"><i class="ti-id-badge"></i></div>
                                    <div class="m-l-10 align-self-center">
                                        <h3 class="m-b-0">
                                    <?php 
                                        $this->db->where('status','ACTIVE');
                                        $this->db->from("employee");
                                        echo $this->db->count_all_results();
                                    ?>  Employees</h3>
                                        <a href="<?php echo base_url(); ?>employee/Employees" class="text-muted m-b-0">View Employee</a></div>
                                </div>
                            </div>
                        </div>
                    </div>
                    <!-- Column -->
                    <!-- Column -->
                    <div class="col-lg-3 col-md-6">
                        <div class="card" style="border-radius: 20px;">
                            <div class="card-body">
                                <div class="d-flex flex-md-column">
                                    <div class="round align-self-center round-info"><i class="ti-user"></i></div>
                                    <div class="m-l-10 align-self-center">
                                        <h3 class="m-b-0">
                                             <?php 
                                                    $this->db->where('leave_status','Approve');
                                                    $this->db->from("emp_leave");
                                                    echo $this->db->count_all_results();
                                                ?> Leaves
                                        </h3>
                                        <a href="<?php echo base_url(); ?>leave/Application" class="text-muted m-b-0">View Leave</a>
                                        </div>
                                </div>
                            </div>
                        </div>
                    </div>
                </div>
                <!-- Row -->
                <!-- ============================================================== -->
            </div> 
            <div class="container-fluid">
                <?php $notice = $this->notice_model->GetNoticelimit(); 
                // $running = $this->dashboard_model->GetRunningProject(); 
                $userid = $this->session->userdata('user_login_id');
                // $todolist = $this->dashboard_model->GettodoInfo($userid);                 
                $holiday = $this->dashboard_model->GetHolidayInfo();                 
                ?>
                <!-- Row -->
                <div class="container-fluid">
                    <div class="col-lg-12">
                        <div class="card" style="border-radius: 20px;">
                            <div class="card-body">
                                <h4 class="card-title text-center" >Notice Board</h4>
                            </div>
                            <div class="card-body">
                                <div class="table-responsive slimScrollDiv" style="height:600px;overflow-y:scroll; width:100%">
                                    <table class="table table-hover earning-box" style="width:100%;">
                                        <thead>
                                            <tr>
                                                <th class="text-center">Title</th>
                                                <th class="text-center">File</th>
                                                <th class="text-center">Date</th>
                                            </tr>
                                        </thead>
                                        <tbody>
                                           <?php foreach($notice AS $value): ?>
                                            <tr class="scrollbar" style="vertical-align:top">
                                                <td><?php echo $value->title ?></td>
                                                <td><mark><a href="<?php echo base_url(); ?>assets/images/notice/<?php echo $value->file_url ?>" target="_blank"><?php echo $value->file_url ?></a></mark>
                                                </td>
                                                <td style="width:100%"><?php echo $value->date ?></td>
                                            </tr>
                                            <?php endforeach; ?>
                                        </tbody>
                                    </table>
                                </div>
                            </div>
                        </div>
                    </div>
                </div>
            </div> 
<script>
  $(".to-do").on("click", function(){
      //console.log($(this).attr('data-value'));
      $.ajax({
          url: "Update_Todo",
          type:"POST",
          data:
          {
          'toid': $(this).attr('data-id'),         
          'tovalue': $(this).attr('data-value'),
          },
          success: function(response) {
              location.reload();
          },
          error: function(response) {
            console.error();
          }
      });
  });			
</script>                                               
<?php $this->load->view('backend/footer'); ?>