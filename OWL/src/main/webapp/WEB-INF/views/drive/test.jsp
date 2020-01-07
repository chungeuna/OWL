<%@ page language="java" contentType="text/html; charset=UTF-8"    pageEncoding="UTF-8"%>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core"%>   
<!DOCTYPE html>
<html>
<head>
<meta charset="utf-8">
<meta http-equiv="X-UA-Compatible" content="IE=edge">
<meta name="viewport" content="width=device-width,initial-scale=1">
<title>OWL</title>
<!-- Favicon icon -->
<link rel="icon" type="image/png" sizes="16x16" href="resources/images/favicon.png">
<link rel="stylesheet" href="resources/plugins/chartist-plugin-tooltips/css/chartist-plugin-tooltip.css">
<!-- Custom Stylesheet -->
<link href="resources/css/style.css" rel="stylesheet">
<link rel="stylesheet" href="https://cdnjs.cloudflare.com/ajax/libs/font-awesome/5.8.2/css/all.min.css" />
<link href="https://fonts.googleapis.com/css?family=Source+Sans+Pro&display=swap" rel="stylesheet">
<script   src="https://ajax.googleapis.com/ajax/libs/jquery/3.4.1/jquery.min.js"></script>
<script src="https://code.jquery.com/ui/1.12.1/jquery-ui.js"></script>
<script>
function Search(){
	$('.drivemenu').empty();   
	var searchfile = "";
	searchfile += "<input type='text' id='searchText' style='width: 40%; height: 30px; border-left-width: 0px;'>";
	searchfile += "<a href='#' onclick='Returncheck()'><i class='fas fa-times'></i></a>";
	$('.drivemenu').append(searchfile);
}

function Allcheck(){ //전체선택 onclick
   $( 'div.more' ).parent( 'div.card' ).css('background', 'rgba(161, 163, 166, 0.3)');
   $("input[type=checkbox]").prop("checked", true);
   
   $('.drivemenu').empty();   
    var button = "";
    button += "<button type='button' class='btn'>업로드</button>&nbsp;&nbsp;&nbsp;&nbsp;";
    button += "<button type='button' class='btn'>새폴더</button>&nbsp;&nbsp;&nbsp;&nbsp;";
    button += "<button type='button' class='btn'>이동</button>&nbsp;&nbsp;&nbsp;&nbsp;";
    button += "<button type='button' class='btn'>삭제</button>&nbsp;&nbsp;&nbsp;&nbsp;";
    button += "<button type='button' class='btn' onclick='Returncheck()'>선택해제</button>&nbsp;&nbsp;&nbsp;&nbsp;";
    button +="<div class='drivegroup'><a><i class='fas fa-list fa-2x'></i></a><span>&nbsp;&nbsp;&nbsp;&nbsp;</span>";
    button += "<a><i class='fas fa-th-large fa-2x'></i></a></div>"
   $('.drivemenu').append(button);   
}

function Returncheck(){
   $( 'div.more' ).parent( 'div.card' ).css('background', '');
   $("input[type=checkbox]").prop("checked", false);
   
   $('.drivemenu').empty();   
    var button = "";
    button +="<button type='button' class='btn' onclick='Search()'>검색</button>&nbsp;&nbsp;&nbsp;&nbsp;"
    button += "<button type='button' class='btn'>업로드</button>&nbsp;&nbsp;&nbsp;&nbsp;";
    button += "<button type='button' class='btn'>새폴더</button>&nbsp;&nbsp;&nbsp;&nbsp;";
    button += "<button type='button' class='btn' onclick='Allcheck()'>전체선택</button>&nbsp;&nbsp;&nbsp;&nbsp;";
    button +="<div class='drivegroup'><a><i class='fas fa-list fa-2x'></i></a><span>&nbsp;&nbsp;&nbsp;&nbsp;</span>";
    button += "<a><i class='fas fa-th-large fa-2x'></i></a></div>"
   $('.drivemenu').append(button);   
}

function checkBox(box){
		var cardId = document.getElementById('css');
	if(box.checked == true){
		$( 'div.more' ).parent( 'div#css' ).css('background', 'rgba(161, 163, 166, 0.3)');

		   $('.drivemenu').empty();   
		    var button = "";
		    button +="<button type='button' class='btn' onclick='Search()'>검색</button>&nbsp;&nbsp;&nbsp;&nbsp;"
		    button += "<button type='button' class='btn'>업로드</button>&nbsp;&nbsp;&nbsp;&nbsp;";
		    button += "<button type='button' class='btn'>새폴더</button>&nbsp;&nbsp;&nbsp;&nbsp;";
		    button += "<button type='button' class='btn'>이동</button>&nbsp;&nbsp;&nbsp;&nbsp;";
		    button += "<button type='button' class='btn'>삭제</button>&nbsp;&nbsp;&nbsp;&nbsp;";
		    button += "<button type='button' class='btn' onclick='Returncheck()'>선택해제</button>&nbsp;&nbsp;&nbsp;&nbsp;";
		    button +="<div class='drivegroup'><a><i class='fas fa-list fa-2x'></i></a><span>&nbsp;&nbsp;&nbsp;&nbsp;</span>";
		    button += "<a><i class='fas fa-th-large fa-2x'></i></a></div>"
		   $('.drivemenu').append(button);  
		
	}else{
		$( 'div.more' ).parent( 'div#css' ).css('background', '');
		Returncheck();		
	}
}
$.noConflict();
jQuery(document).ready(function( $ ) {
    $( "#sortable" ).sortable({
      revert: true
    });
    
    $( ".topFolder" ).draggable({
      connectToSortable: "#sortable",
      helper: "clone",
      revert: "invalid"
    });
    $( "ul, li" ).disableSelection();
   
  });




/* $('.modal').on('hidden', function( ) {
    $('#countingTitle').val(' ');
}); */

</script>
<style>
.box {
   width: 100%;
   background: #fff;
   padding: 30px;
   float: left;
   height: 900px;
   font-family: 'Source Sans Pro', sans-serif;
}

/* The list style
-------------------------------------------------------------- */
.directory-list ul {
   margin-left: 10px;
   padding-left: 20px;
   padding-bottom: 7px;
   border-left: 1px dashed #ddd;
   padding-bottom: 7px;
   cursor: pointer;
}

.directory-list li {
   list-style: none;
   color: #888;
   font-size: 18px;
   padding-bottom: 7px;
}

.directory-list a {
   border-bottom: 1px solid transparent;
   color: #888;
   text-decoration: none;
   transition: all 0.2s ease;
}

.directory-list a:hover {
   border-color: #eee;
   color: #000;
}

.directory-list .folder, .directory-list .folder>a {
   color: #777;
   font-weight: bold;
}

.directory-list .topFolder, .directory-list .topFolder>a {
   color: #777;
   font-weight: bold;
}
/* The icons
-------------------------------------------------------------- */
.directory-list li:before {
   margin-right: 10px;
   content: "";
   height: 20px;
   vertical-align: middle;
   width: 20px;
   background-repeat: no-repeat;
   display: inline-block;
   /* file icon by default */
   background-image:
      url("data:image/svg+xml;utf8,<svg xmlns='http://www.w3.org/2000/svg' viewBox='0 0 100 100'><path fill='lightgrey' d='M85.714,42.857V87.5c0,1.487-0.521,2.752-1.562,3.794c-1.042,1.041-2.308,1.562-3.795,1.562H19.643 c-1.488,0-2.753-0.521-3.794-1.562c-1.042-1.042-1.562-2.307-1.562-3.794v-75c0-1.487,0.521-2.752,1.562-3.794 c1.041-1.041,2.306-1.562,3.794-1.562H50V37.5c0,1.488,0.521,2.753,1.562,3.795s2.307,1.562,3.795,1.562H85.714z M85.546,35.714 H57.143V7.311c3.05,0.558,5.505,1.767,7.366,3.627l17.41,17.411C83.78,30.209,84.989,32.665,85.546,35.714z' /></svg>");
   background-position: center 2px;
   background-size: 60% auto;
}

.directory-list li.folder:before {
   /* folder icon if folder class is specified */
   background-image:
      url("data:image/svg+xml;utf8,<svg xmlns='http://www.w3.org/2000/svg' viewBox='0 0 100 100'><path fill='steelblue' d='M96.429,37.5v39.286c0,3.423-1.228,6.361-3.684,8.817c-2.455,2.455-5.395,3.683-8.816,3.683H16.071 c-3.423,0-6.362-1.228-8.817-3.683c-2.456-2.456-3.683-5.395-3.683-8.817V23.214c0-3.422,1.228-6.362,3.683-8.817 c2.455-2.456,5.394-3.683,8.817-3.683h17.857c3.422,0,6.362,1.228,8.817,3.683c2.455,2.455,3.683,5.395,3.683,8.817V25h37.5 c3.422,0,6.361,1.228,8.816,3.683C95.201,31.138,96.429,34.078,96.429,37.5z' /></svg>");
   background-position: center top;
   background-size: 75% auto;
}

.directory-list li.topFolder:before {
   /* folder icon if folder class is specified */
   background-image:
      url("data:image/svg+xml;utf8,<svg xmlns='http://www.w3.org/2000/svg' viewBox='0 0 100 100'><path fill='steelblue' d='M96.429,37.5v39.286c0,3.423-1.228,6.361-3.684,8.817c-2.455,2.455-5.395,3.683-8.816,3.683H16.071 c-3.423,0-6.362-1.228-8.817-3.683c-2.456-2.456-3.683-5.395-3.683-8.817V23.214c0-3.422,1.228-6.362,3.683-8.817 c2.455-2.456,5.394-3.683,8.817-3.683h17.857c3.422,0,6.362,1.228,8.817,3.683c2.455,2.455,3.683,5.395,3.683,8.817V25h37.5 c3.422,0,6.361,1.228,8.816,3.683C95.201,31.138,96.429,34.078,96.429,37.5z' /></svg>");
   background-position: center top;
   background-size: 75% auto;
}

.drivemenu {
   width: 100%;
   background: white;
/*    border-bottom: 1px double #326295; */
   font-family: 'Source Sans Pro', sans-serif;
   padding: 15px 20px;
}

.btn {
   border: 1px double #326295;
   background-color: #fff;
   cursor: pointer;
   font-weight: bold;
   color: #326295;

}

.btn:hover{
   color:#fff;
   background-color: #326295;
   border-color: #326295;
   box-shadow:200px 0 0 0 rgba(0,0,0,0.5) inset;
}

.drivegroup{
   float:right; 
   margin-top: 5px; 
   color:#326295;
}

.filebox input[type="file"] {  /* 파일 필드 숨기기 */
  position: absolute;
  width: 1px;
  height: 1px;
  padding: 0;
  margin: -1px;
  overflow: hidden;
  clip:rect(0,0,0,0);
  border: 0;
}
#driveFile input[type="file"] {  /* 파일 필드 숨기기 */
  position: absolute;
  width: 1px;
  height: 1px;
  padding: 0;
  margin: -1px;
  overflow: hidden;
  clip:rect(0,0,0,0);
  border: 0;
}
.card{
   border: 3px solid #326295;
}
.card:hover .more{
   visibility: visible;
   opacity: 1;
   cursor: pointer;
}
.more{
   visibility: hidden;
}

#trash{
	position: absolute;
    top: 880px;
    font-weight: bold;
}
#detail{
position: absolute; 
z-index: 1;
border: 2px solid #e8ebed;
padding: 10px 10px;
background-color: #fff;
}

#detail li:hover{
background-color: #f0f3f7;
cursor: pointer;
}

#searchText{
border-right:0px; 
border-top:0px; 
boder-left:0px; 
boder-bottom:3px solid #326295;

}
</style>
</head>
<body>
   <div id="main-wrapper">
      <!-- Top -->
      <jsp:include page="../include/top.jsp" />
      <!-- SideBar -->
      <jsp:include page="../include/sideBar.jsp" />
      <!-- Content -->
      <div class="content-body">

         <!-- Project 상단 바 -->
        <jsp:include page="../include/projectTab.jsp"/>
            <!-- 드라이브 사이드 바 -->
            <div class="row">
               <div class="col-md-3" style="padding-right: 0;">
                  <div class="box">
                     <h2 style="padding-left: 25px;">
                        <b>D r i v e</b>
                     </h2>
                     <hr>
                     <div class="filebox" style="float: right;">
                        <label for="driveFolder" style="cursor: pointer;"><i class="fas fa-plus"></i></label> 
                        <input type="file" id="driveFolder">
                     </div>
                     <br>
                     <ul class="directory-list">
                        <li class="topFolder">Project 1
                           <ul id="sortable">
                              <li class="folder">css</li>
                              <li class="folder">js</li>
                              <li class="folder">images</li>
                           </ul>
                        </li>
                        <li class="topFolder">assets
                           <ul id="sortable">
                              <li class="folder">css</li>
                              <li class="folder">js</li>
                              <li class="folder">images</li>
                           </ul>
                        </li>
                     </ul>
                     <a href="Trash.do" id="trash" style="color:#4f5052; cursor: pointer;"><span style="color:#326295;"><i class="fas fa-trash-alt"></i></span>&nbsp;&nbsp;휴지통</a>
                  </div>
               </div>

               <div class="col-md-9" style="padding-left: 0;">
                  <div class="drivemenu">
                  <button type="button" class="btn btn-primary" onclick="Search()">검색</button>&nbsp;&nbsp;&nbsp;&nbsp;
                  	<div class="filebox" style="display:inline;">
                  	 <input type="file" id="driveFile">
                     <label for="driveFile" style="cursor: pointer; margin-bottom: 0px;" class="btn btn-primary">업로드</label>&nbsp;&nbsp;&nbsp;&nbsp;
                     </div>
                     <button type="button" class="btn btn-primary" data-toggle="modal" data-target="#newFolder">새폴더</button>&nbsp;&nbsp;&nbsp;&nbsp;
                     <button type="button" class="btn btn-primary" onclick="Allcheck()">전체선택</button>   &nbsp;&nbsp;&nbsp;&nbsp;                  
                     <div class="drivegroup">
                        <a><i class="fas fa-list fa-2x"></i></a> <span>&nbsp;&nbsp;</span>
                        <a><i class="fas fa-th-large fa-2x"></i></a>
                     </div>
                  </div>

               <div class="row"  style="margin : 10px 10px;">
               <div class="col-sm-4">
                     <div class="card"  id="css">         
                     <div class="more" style="margin-top: 10px;">
                     &nbsp;&nbsp;&nbsp;&nbsp;
                     <input type="checkbox" value="css" onclick="checkBox(this)" style="width:18px; height:18px;" >   
                     <a style="float:right;" data-toggle="collapse" href="#detail"><i class="fas fa-ellipsis-v fa-lg"></i> &nbsp;&nbsp;&nbsp;&nbsp;</a>
                     </div>
                     <div style="margin-left: 60%;">
				     <ul id="detail" class="collapse">
				        <li><i class="fas fa-pencil-alt"></i>&nbsp; 이름 변경</li>
				        <li><i class="fas fa-trash-alt"></i>&nbsp; 삭제</li>
				      </ul>
				      </div>
                     <br>            
                        <div class="card-body text-center">
                           <span style="color:#326295;"><i class="fas fa-folder fa-5x"></i></span>
                           <br><br>
                           <h4 style="text-align: center;">css</h4>
                        </div>
                     </div>
                     </div>
                     <div class="col-sm-4">
                     <div class="card">
                     <div class="more" style="margin-top: 10px;">
                     &nbsp;&nbsp;&nbsp;&nbsp;
                     <input type="checkbox" value="js" onclick="checkBox(this)" style="width:18px; height:18px;" >   
                     <span style="float:right;"><i class="fas fa-ellipsis-v fa-lg"></i> &nbsp;&nbsp;&nbsp;&nbsp;</span>
                     </div>
                     <br>
                        <div class="card-body text-center">
                           <span style="color:#326295;"><i class="fas fa-folder fa-5x"></i></span>
                           <br><br>
                           <h4 style="text-align: center;">js</h4>
                        </div>
                     </div>
                     </div>
                     <div class="col-sm-4" >
                     <div class="card">
                     <div class="more" style="margin-top: 10px;">
                     &nbsp;&nbsp;&nbsp;&nbsp;
                     <input type="checkbox" value="images" onclick="checkBox(this)" style="width:18px; height:18px;" >   
                     <span style="float:right;"><i class="fas fa-ellipsis-v fa-lg"></i> &nbsp;&nbsp;&nbsp;&nbsp;</span>
                     </div>
                     <br>
                        <div class="card-body text-center">
                           <span style="color:#326295;"><i class="fas fa-folder fa-5x"></i></span>
                           <br><br>
                           <h4 style="text-align: center;">images</h4>
                        </div>
                     </div>
                     </div>
                  </div>
               </div>
            </div>
         </div>
      </div>
      
           <!-- Modal -->
     <div class="modal fade" id="newFolder">
         <div class="modal-dialog modal-dialog-centered" role="document">
             <div class="modal-content">
                 <div class="modal-header" style="text-align: center;">
                     <h4 class="modal-title"><b>폴더 생성</b></h4>
                     <button type="button" class="close" data-dismiss="modal"><span>&times;</span>
                     </button>
                 </div>
                 <div class="modal-body">
                     <h5>생성할 폴더명을 입력하세요.</h5>
                     <input type="text" id="countingTitle" style="width:100%; height: 30px;">
                     <br>
                 </div>
                 <div class="modal-footer">
                     <button type="button" class="btn btn-secondary" data-dismiss="modal">닫기</button>
                     <button type="button" class="btn btn-primary">생성하기</button>
                 </div>
             </div>
         </div>
     </div>

    
      <!-- Bottom -->
      <jsp:include page="../include/bottom.jsp" />
   </div>
   <!--Scripts-->
   <script src="resources/plugins/common/common.min.js"></script>
   <script src="resources/js/custom.min.js"></script>
   <script src="resources/js/settings.js"></script>
   <script src="resources/js/gleek.js"></script>
   <script src="resources/js/styleSwitcher.js"></script>
<script>
var tabBtn = $("#tab-btn > ul > li");     //각각의 버튼을 변수에 저장
var tabCont = $("#tab-cont > div");       //각각의 콘텐츠를 변수에 저장

//컨텐츠 내용을 숨겨주세요!
tabCont.hide().eq(0).show();

tabBtn.click(function(){
  var target = $(this);         //버튼의 타겟(순서)을 변수에 저장
  var index = target.index();   //버튼의 순서를 변수에 저장
  tabBtn.removeClass("active");    //버튼의 클래스를 삭제
  target.addClass("active");       //타겟의 클래스를 추가
  tabCont.css("display","none");
  tabCont.eq(index).css("display","block");
});
</script>   
</body>
</html>