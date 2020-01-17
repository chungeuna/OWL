<%@ page language="java" contentType="text/html; charset=UTF-8"
   pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
<head>
    <meta charset="utf-8">
    <meta http-equiv="X-UA-Compatible" content="IE=edge">
    <!-- Tell the browser to be responsive to screen width -->
    <meta name="viewport" content="width=device-width, initial-scale=1">
    <meta name="description" content="">
    <meta name="author" content="">
    <title>OWL</title>
    <jsp:include page="../include/headTag.jsp"/>
	<!-- DataTable -->
	<link rel="stylesheet" type="text/css" href="https://cdn.datatables.net/1.10.20/css/dataTables.bootstrap4.css"/>
	<script type="text/javascript" src="https://cdn.datatables.net/1.10.20/js/jquery.dataTables.js"></script>
	<script type="text/javascript" src="https://cdn.datatables.net/1.10.20/js/dataTables.bootstrap4.js"></script>
	<!-- Toast Ui -->
    <link rel="stylesheet" type="text/css" href="https://uicdn.toast.com/tui-calendar/latest/tui-calendar.css" />
    <script src="https://uicdn.toast.com/tui.code-snippet/latest/tui-code-snippet.js"></script>
	<script src="https://uicdn.toast.com/tui.dom/v3.0.0/tui-dom.js"></script>
	<script src="https://uicdn.toast.com/tui.time-picker/latest/tui-time-picker.min.js"></script>
	<script src="https://uicdn.toast.com/tui.date-picker/latest/tui-date-picker.min.js"></script>
	<script src="https://uicdn.toast.com/tui-calendar/latest/tui-calendar.js"></script>
	
<script type="text/javascript">
$(function() {
	$("#dashboardTable").DataTable();
	 $("#dashCalendar").tuiCalendar({
		  defaultView: 'month',
		  taskView: true
		   /* template: {
		    monthDayname: function(dayname) {
		      return '<span class="calendar-week-dayname-name">' + dayname.label + '</span>';
		    }
		  }  */
		  /* grid: {
	            header: {
	                header: 34
	            },
	            footer: {
	                height: 10
	            }
	        } */
	}); 
});



</script>
<style type="text/css">
 .dash_shadow {
 box-shadow: 3px 3px 3px 3px gray; 
 }
 .dash_radius {
 border-radius: 0.25rem
 }

.cbp_tmtimeline {
	margin: 30px 0 0 0;
	padding: 0;
	list-style: none;
	position: relative;
} 

/* The line */
.cbp_tmtimeline:before {
	content: '';
	position: absolute;
	top: 0;
	bottom: 0;
	width: 10px;
	background: #5086bf;
	left: 20%;
	margin-left: -10px;
}

/* The date/time */
.cbp_tmtimeline > li {
	position: relative;
}

.cbp_tmtimeline > li .cbp_tmtime {
	display: block;
	width: 25%;
	padding-right: 100px;
	position: absolute;
}

.cbp_tmtimeline > li .cbp_tmtime span {
	display: block;
	text-align: right;
}

.cbp_tmtimeline > li .cbp_tmtime span:first-child {
	font-size: 0.9em;
	color: #bdd0db;
}

.cbp_tmtimeline > li .cbp_tmtime span:last-child {
	font-size: 2.9em;
	color: #5086bf;
}

.cbp_tmtimeline > li:nth-child(odd) .cbp_tmtime span:last-child {
	color: #326295;
}

/* Right content */
.cbp_tmtimeline > li .cbp_tmlabel {
	margin: 0 0 15px 30%;
	width:400px;
	background: #5086bf;
	color: #fff;
	padding: 1em;
	font-size: 1.2em;
	font-weight: 300;
	line-height: 1.4;
	position: relative;
	border-radius: 5px;
}

.cbp_tmtimeline > li:nth-child(odd) .cbp_tmlabel {
	background: #326295;
}

.cbp_tmtimeline > li .cbp_tmlabel h2 { 
	margin-top: 0px;
	padding: 0 0 10px 0;
	border-bottom: 1px solid rgba(255,255,255,0.4);
}

/* The triangle */
.cbp_tmtimeline > li .cbp_tmlabel:after {
	right: 100%;
	border: solid transparent;
	content: " ";
	height: 0;
	width: 0;
	position: absolute;
	pointer-events: none;
	border-right-color: #5086bf;
	border-width: 10px;
	top: 10px;
} 

.cbp_tmtimeline > li:nth-child(odd) .cbp_tmlabel:after {
	border-right-color: #326295;
}

/* The icons */
.cbp_tmtimeline > li .cbp_tmicon {
	width: 40px;
	height: 40px;
	font-family: 'ecoico';
	speak: none;
	font-style: normal;
	font-weight: normal;
	font-variant: normal;
	text-transform: none;
	font-size: 1.4em;
	line-height: 40px;
	-webkit-font-smoothing: antialiased;
	position: absolute;
	color: #fff;
	background: #326295;
	border-radius: 50%;
	box-shadow: 0 0 0 8px #5086bf;
	text-align: center;
	left: 20%;
	top: 0;
	margin: 0 0 0 -25px;
}



/* Example Media Queries */
@media screen and (max-width: 65.375em) {
	.cbp_tmtimeline > li .cbp_tmtime span:last-child {
		font-size: 1.5em;
	}
}

@media screen and (max-width: 47.2em) {
	.cbp_tmtimeline:before {
		display: none;
	}

	.cbp_tmtimeline > li .cbp_tmtime {
		width: 100%;
		position: relative;
		padding: 0 0 20px 0;
	}

	.cbp_tmtimeline > li .cbp_tmtime span {
		text-align: left;
	}

	.cbp_tmtimeline > li .cbp_tmlabel {
		margin: 0 0 30px 0;
		padding: 1em;
		font-weight: 400;
		font-size: 95%;
	}

	.cbp_tmtimeline > li .cbp_tmlabel:after {
		right: auto;
		left: 20px;
		border-right-color: transparent;
		border-bottom-color: #5086bf;
		top: -20px;
	}

	.cbp_tmtimeline > li:nth-child(odd) .cbp_tmlabel:after {
		border-right-color: transparent;
		border-bottom-color: #326295;
	}

	.cbp_tmtimeline > li .cbp_tmicon {
		position: relative;
		float: right;
		left: auto;
		margin: -55px 5px 0 0px;
	}	
}
.font-900 {
	font-weight: 900;
}
.cbp_tmlabel p {
	font-size:14px;
}
</style>
</head>

<body>
	<!-- LOADER -->
    <div class="preloader">
        <div class="lds-ripple">
            <div class="lds-pos"></div>
            <div class="lds-pos"></div>
        </div>
    </div>
   
    <div id="main-wrapper">
        
		<!-- TOP -->
        <jsp:include page="../include/top.jsp"/>
       
        <!-- SIDE BAR -->
        <jsp:include page="../include/sideBar.jsp"/>

		<!-- CONTENT BOX -->
        <div class="page-wrapper">
            <!-- CONTENT MAIN -->
            <div class="container-fluid">
                <div class="row">
                <!--  my task -->
                    <div class="col-lg-6">
                        <div class="card dash_shadow dash_radius">
                         
                            <div class="card-body">
                            <h4 class="card-title">Task</h4>
                                <div class="d-md-flex align-items-center table-responsive">
                                  
		                             <table class="table table-striped table-bordered text-center" id="dashboardTable">
		                                <thead>
		                                    <tr>
		                                        <th scope="col">Project</th>
		                                        <th scope="col">Subject</th>
		                                        <th scope="col">Due Date</th>
		                                        <th scope="col">Priority</th>
		                                    </tr>
		                                </thead>
		                                <tbody>
		                                    <tr>
		                                        <td>구매전략</td>
		                                        <td>로그인 view 구현</td>
		                                        <td class="text-danger">today</td>
		                                        <td><span class="badge badge-pill badge-danger font-14">high</span></td>
		                                    </tr>
		                                    <tr>
		                                        <td>구매전략</td>
		                                        <td>공지사항 게시판 기능 구현</td>
		                                        <td class="text-success">tomorrow</td>
		                                        <td><span class="badge badge-pill badge-warning font-14">low</span></td>
		                                    </tr>
		                                    <tr>
		                                        <td>판매계획</td>
		                                        <td>단체 채팅 기능 구현</td>
		                                        <td>1/18</td>
		                                        <td><span class="badge badge-pill badge-success font-14">medium</span></td>  
		                                    </tr>
		                                    <tr>
		                                        <td>후기관리</td>
		                                        <td>캘린더 뷰 구현</td>
		                                        <td>1/20</td>
		                                        <td><span class="badge badge-pill badge-warning font-14">low</span></td>
		                                    </tr>
		                                </tbody>
		                            </table>
                                </div>
                            </div>
                        </div>
                    <!-- </div>  -->
                    <!-- calendar -->
                     <!-- <div class="col-lg-6"> -->
                        <div class="card dash_shadow dash_radius">
                            <div class="card-body">
                            <h4 class="card-title">Calendar</h4>
                                <div class="d-md-flex align-items-center">
                                   
                                    <div id="dashCalendar" class="w-100 h-100"></div>
                                </div>
                            </div>
                        </div>
                      </div> 
               <!--  </div> -->
               <!--  <div class="row"> -->
                <!--  graph -->
              		 <div class="col-lg-6"> 
                        <div class="card dash_shadow dash_radius">
                            <div class="card-body">
                              <h4 class="card-title">Progress</h4>
                                <div class="align-items-center">
                                   <div class="w-100 pt-3">
                                    <div class="d-flex no-block align-items-center">
                                        <span>구매전략</span>
                                        <div class="ml-auto">
                                            <span>80%</span>
                                        </div>
                                    </div>
                                    <div class="progress">
                                        <div class="progress-bar" role="progressbar" style="width: 80%;" aria-valuenow="10" aria-valuemin="0" aria-valuemax="100"></div>
                                    </div>
                                </div>
                                 <div class="w-100 pt-3">
                                    <div class="d-flex no-block align-items-center">
                                        <span>판매계획</span>
                                        <div class="ml-auto">
                                            <span>34%</span>
                                        </div>
                                    </div>
                                    <div class="progress">
                                        <div class="progress-bar" role="progressbar" style="width: 34%; background-color:#326295;" aria-valuenow="10" aria-valuemin="0" aria-valuemax="100"></div>
                                    </div>
                                </div>
                                 <div class="w-100 pt-3">
                                    <div class="d-flex no-block align-items-center">
                                        <span>후기관리</span>
                                        <div class="ml-auto">
                                            <span>95%</span>
                                        </div>
                                    </div>
                                    <div class="progress">
                                        <div class="progress-bar" role="progressbar" style="width: 95%; background-color:darkgray;" aria-valuenow="10" aria-valuemin="0" aria-valuemax="100"></div>
                                    </div>
                                </div>
                              </div>
                            </div>
                        </div>
                        
                        
                    <!-- </div> -->
                 <!-- timeline  -->
                  <!-- <div class="col-lg-6"> -->
                        <div class="card dash_shadow dash_radius">
                            <div class="card-body">
                           	  <h4 class="card-title">Timeline</h4>
                                <div class="d-md-flex align-items-center">
            <!--   <div class="container"> -->
			<!-- <div class="main"> -->
				<ul class="cbp_tmtimeline">
					<li>
						<div class="cbp_tmicon"><span class="font-14 font-900">MON</span></div>
						<div class="cbp_tmlabel">
							<h5>구매전략</h5>
							<p>로그인 view 구현</p>
						</div>
					</li>
					<li>
						<div class="cbp_tmicon"><span class="font-14 font-900">TUE</span></div>
						<div class="cbp_tmlabel">
							<h5>판매계획</h5>
							<p>공지사항 게시판 기능 구현</p>
							<p>공지사항 게시판 view 구현</p>
							<h5>구매전략</h5>
							<p>qna 게시판 view 구현</p>
						</div>
					</li>
					<li>
						<div class="cbp_tmicon"><span class="font-14 font-900">WED</span></div>
						<div class="cbp_tmlabel">
							<h5>판매계획</h5>
							<p>단체 채팅 기능 구현</p>
						</div>
					</li>
					<li>
						<div class="cbp_tmicon"><span class="font-14 font-900">THU</span></div>
						<div class="cbp_tmlabel">
						<h5>판매계획</h5>
							<p>채팅 view 구현</p>
						</div>
					</li>
					<li>
						<div class="cbp_tmicon"><span class="font-14 font-900">FRI</span></div>
						<div class="cbp_tmlabel">
							<h5>구매전략</h5>
							<p>탈퇴 view 구현</p>
						</div>
					</li>
					<li>
						<div class="cbp_tmicon"><span class="font-14 font-900">SAT</span></div>
						<div class="cbp_tmlabel">
							<h5>판매계획</h5>
							<p>대시보드 구현</p>
						</div>
					</li>
					<li>
						<div class="cbp_tmicon"><span class="font-14 font-900">SUN</span></div>
						<div class="cbp_tmlabel">
							<h5>구매전략</h5>
							<p>로그인 view 구현</p>
						</div>
					</li>
				</ul>
			<!-- </div> -->
		<!-- </div> -->
	                 
                                    
                                    <!-- 끝 -->
                                </div>
                            </div>
                        </div>
                    </div>
            	<!-- </div> -->
			<!-- BOTTOM -->
            <jsp:include page="../include/bottom.jsp"/>
        </div>
        </div>
    </div>
 </div>
</body>