<%@ page language="java" contentType="text/html; charset=EUC-KR"
    pageEncoding="EUC-KR"%>
<!DOCTYPE html>
<html class="h-100">
<head>
<meta charset="utf-8">
<title>OWL</title>
<jsp:include page="../include/headTag.jsp"/>
 <link rel="icon" type="image/png" sizes="16x16" href="../../assets/images/favicon.png">
  <link href="resources/css/style.css" rel="stylesheet">
  <style type="text/css">
  body {
	background-color: #326295;
	overflow-y: hidden;
}
  </style>
  <script type="text/javascript">
		$(function(){
			$("#resetBox  .pwd1").keyup(
					function(event) {
						if ($("#resetBox  .pwd1").val().length < 8 ) {
							$("#resetBox  .pwd1").siblings(".text-danger").css("display", "block");
							$("#resetBox .successletter").css("display", "none");
							$("#resetBox .failletter").css("display", "none");
							
						}else if($("#resetBox  .pwd1").val() == null && $("#resetBox  .pwd2").val() == null) {
							$("#resetBox .successletter").css("display", "none");
							$("#resetBox .failletter").css("display", "none");
							
						}else{
							$("#resetBox  .pwd1").siblings(".text-danger").css("display", "none");
							$("#resetBox  .pwd2").keyup(
									function(event) {
										if ($("#resetBox  .pwd1").val() == $("#resetBox  .pwd2").val()){
											$("#resetBox .successletter").css("display", "block");
											$("#resetBox .failletter").css("display", "none");									
										}else{
											$("#resetBox .failletter").css("display", "block");
											$("#resetBox .successletter").css("display", "none");
										}
									})
						}
					})		

				$("#chageButton").click(function(){
					$.ajax({
						method: "POST",
						url : "ResetPassword.do",
						data : {
							email : $("#email").val(),
							password : $("#pwd").val()
						},
						success : function(result) {

							Swal.fire({
								  title: '��й�ȣ ���� �Ϸ�\n�α��� ȭ������ �̵��մϴ�.',
								  icon: "success",
						          showConfirmButton: false,
						          timer: 1500
								}).then((result) => {
									console.log("in Login");
									window.location.href ="Login.do";
								})
						},
						error : function() {
							errorAlert("��й�ȣ ���濡 �����߽��ϴ�.");
						}
					})

				})
		})
  </script>
</head>
<body >
	<div class="login-form-bg h-100">
        <div class="container h-100">
            <div class="row justify-content-center h-100">
                <div class="col-xl-6">
                    <div class="form-input-content">
                        <div class="card login-form mb-0">
                            <div class="card-body pt-5">
                                <h4 class="text-center">O W L</h4>
                                    <div id ="resetBox" class="form-group">
                                    	<input type="hidden" id="email" value="${email}">
						                <input type="password" name="pwd1" class="form-control pwd1" placeholder="New Password">
						                <span class="text-danger pwd1letter" style="display: none;">Please enter your New Password.</span><br>
						                <input type="password" id="pwd" class="form-control pwd2" placeholder="Confirmed New Password">
						                <span class="text-success successletter" style="display: none;">You can change your Password</span>
						                 <span class="text-danger failletter" style="display: none;">Passwords do not match.</span>
						            </div>
						            <input type="button" id="chageButton" class="btn login-form__btn submit w-100" value="Change my password">
                                </div>
                            </div>
                        </div>
                    </div>
                </div>
            </div>
        </div>
        
        
     <script src="resources/plugins/common/common.min.js"></script>
    <script src="resources/js/custom.min.js"></script>
    <script src="resources/js/settings.js"></script>
</body>
</html>