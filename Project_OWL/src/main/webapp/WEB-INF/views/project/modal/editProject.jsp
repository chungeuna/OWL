<%@ page language="java" contentType="text/html; charset=UTF-8" pageEncoding="UTF-8"%>
<style>

</style>
   <div class="modal fade" id="editProject">
         <div class="modal-dialog modal-dialog-centered" role="document">
	             <div class="modal-content">
				<div class="modal-header text-center">
					<h4 class="modal-title">
						<i class="far fa-sun"></i> 프로젝트 환경설정
					</h4>
					<button type="button" class="close" data-dismiss="modal" aria-label="Close">
						<span aria-hidden="true">&times;</span>
					</button>
				</div>
				<div class="modal-body">
 		             <h5>Color</h5>
 		             <input type="hidden" name="projectIdx"  id="projectIdx"> 
		             <input type="text" id="nowColor" class="complex-colorpicker form-control" value="">
                     <br>                        
                     <br>                
                     <h5>Favorite</h5>
                     <div style="position:relative;">
                     <p>해당 프로젝트를 즐겨찾기에 추가하시겠습니까?</p>
					<span class="switcher switcher-2">
					   <input type="checkbox" id="switcher-2">
					   <label for="switcher-2" id="swicherlabel"></label>
					</span>
		             <br>
                 </div>
                 <div class="modal-footer">
                     <button type="button" class="btn btn-primary" data-dismiss="modal" id="editBtn">적용하기</button>
                 </div>
             </div>
         </div>
     </div>
     </div>