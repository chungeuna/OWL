<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<style>
#theInfo{
   color:#fff; 
   height: 50px;
   padding-top: 17px;
   padding-bottom: 3px;
   margin-bottom: 0px;
}
</style>
<div id="memberCheckModal" class="modal fade bd-example-modal-lg" tabindex="-1" role="dialog" aria-hidden="true">
    <div class="modal-dialog modal-dialog-centered" role="document">
        <div class="modal-content">
            <div class="modal-header text-center">
                <h4 class="modal-title w-100 font-weight-bold">
                    <i class="icon-settings mr-2"></i>프로젝트 정보
                </h4>
                <button type="button" class="close" data-dismiss="modal" aria-label="Close">
                    <span aria-hidden="true">&times;</span>
                </button>
            </div>
            <div class="modal-body modal-scroll mx-3 mb-3">
                <div>
                   <ul class="list-style-none assignedto text-center" id="projectInfoBox">
	                     <li>
	                        <h5 id="theInfo" style="background-color : #326295;">
	                        	<b>📅  ${project.startDate} ~ ${project.endDate}</b>
	                        </h5>
                       </li>
                      </ul>
                      <hr>
                    <!-- <button class="btn btn-primary float-right offset-10">권한 양도</button> -->
                    <ul class="list-style-none assignedto text-center" id="projectMemebersBox">

                        <li class="mt-3">
                            <img class="rounded-circle" width="40"
                                onerror="this.src=&quot;resources/images/login/profile.png&quot;"
                                src="resources/images/login/profile.png" alt="user">
                            <label class='ml-3 text-left' style='width: 200px'> 김씨(kim@gmail.com) </label>
                            <span class='ml-5 roleBadge pm' style='padding-top : 5px;'></span>
                            <a href="javascript:void(0)" data-toggle="dropdown" id="dropdownBtn" aria-haspopup="true"
                                aria-expanded="false" style="float: right">
                                <i class="fas fa-ellipsis-v"></i>
                           	</a>
                            <div class="dropdown-menu" aria-labelledby="dropdownBtn">
                                <ul class="list-style-none">
                                    <li class="pl-3"><a href="#" onclick="deleteMember()">멤버 퇴출</a></li>
                                    <li class="pl-3"><a href="#" onclick="transferAuthority()">PM 양도</a></li>
                                </ul>
                            </div>
                        </li>
                    </ul>
                </div>
            </div>
        </div>
    </div>
</div>