 $(document).ready(function() {
	
 	$('#myform').submit(function() {
 		
 		if($('#id').val()=="") {
 			alert("ID를 입력하세요");
 			$('#id').focus();
 			return false;
 		}
 		if(idCheck == false) {
 			alert("ID 중복검사를 하세요");
 			return false;
 		}
 		
 		if($('#pass').val()=="") {
 			alert("비밀번호를 입력하세요");
 			$('#pass').focus();
 			return false;
 		}
 		
 		if($('#jumin1').val()=="") {
 			alert("주민번호 앞자리를 입력하세요");
 			$('#jumin1').focus();
 			return false;
 		}
 		if($('#jumin1').val().length != 6) {
 			alert("주민번호 6자리를 입력하세요.");
 			$('#jumin1').val('');
 			$('#jumin1').focus();
 			return false;
 		}
 		if($('#jumin2').val()=="") {
 			alert("주민번호 뒷자리를 입력하세요");
 		
 			$('#jumin2').focus();
 			return false;
 		}
 		
 		if($('#jumin2').val().length != 7) {
 			alert("주민번호 뒷자리 7자리를 입력하세요.");
 			$('#jumin2').val('');
 			$('#jumin1').val('');
 			$('#jumin1').focus();
 			return false;
 		}
 		
 		if($('#email').val()=="") {
 			alert("E-mail 아이디를 입력하세요");
 			$('#email').focus();
 			return false;
 		}
 		
 		if($('#domain').val()=="") {
 			alert("E-mail 도메인을 입력하세요");
 			$('#domain').focus();
 			return false;
 		}
 		if($('input[type=radio]:checked').length==0) {
 			alert("성별을 선택하세요");
 			return false;
 		}
 		/*
 			if($('#gender1').is(":checked") == false &&
 				$("#gender2").is(":checked") == false) {
 						alert("성별을 선택하세요");
 	 					return false;
 			}
 		
 		*/
 		// input:checkbox:checked 사용가능
 		if($('input[type=checkbox]:checked').length < 2) {
 			alert("2개 이상 취미를 선택하세요");
 			return false;
 		}
 		if($('#post1').val() =="") {
 			alert("우편번호를 입력하세요.");
 			$('#post1').focus();
 			return false;
 		}
 		
 		if($('#address').val() =="") {
 			alert("주소를 입력하세요.");
 			$('#address').focus();
 			return false;
 		}
 		if($('#intro').val() =="") {
 			alert("자기 소개를 입력하세요.");
 			$('#intro').focus();
 			return false;
 		}
 		
 	});
 	 var idCheck = false;
 	$('#idCheckButton').on('click', function() {
 		if($('#id').val()=='') {
 			alert("ID를 입력하세요.");
 			$('#id').focus();
 		} else {
 			pattern = /^[A-Z][a-zA-Z0-9_]{3,}$/;
 			if(pattern.test($('#id').val())) {
 				var ref = "idcheck.html?id="+$('#id').val();
 				window.open(ref,"idcheck","width=300, height=250")
 				idCheck = true;
 			} else {
 				alert("첫 글자는 대문자이고 두번째부터는 대소문자, 숫자, _로 총 4개 이상");
 				$('#id').val('');
 				$('#id').focus();
 			}
 		}
 		
 	});
 	$('#id').on('keyup', function() {
 		idCheck = false;
 	});
 	$('#jumin1').on('keyup', function() {
 		if(this.value.length == 6) {
 			pattern = /^[0-9]{2}(0[1-9]|1[0-2])(0[1-9]|[12][0-9]|[3][01])$/;
 			if(pattern.test(jumin1.value)) {  // 6자리가 숫자인 경우
 				$('#jumin2').focus();
 			} else {	//6자리가 숫자가 아닌 경우
 				alert("숫자로 입력하세요");
 				$('#jumin1').val('');	//앞자리 모두 초기화
 				$('#jumin1').focus();	 	//앞자리에 포커스를 준다.
 			}
 		}
 	});
 	$('#jumin2').on('keyup', function() {
 		if($('#jumin2').val().length == 7) {
 			pattern = /^[1234][0-9]{6}$/;
 			if(pattern.test($('#jumin2').value)) {
 				alert("숫자로 입력하세요");
 				$('#jumin2').val('');
 				$('#jumin2').focus();
 			} else {
 				var a = this.value.substring(0,1)
 				if(a == "1" || a == "3") {
 					$('#gender1').prop('checked',true);
 				} else if(a == "2" || a == "4") {
 					$('#gender2').prop('checked',true);
 				} else {
 					alert("외국인이냐?");
 					this.val('');
 					this.focus();
 				}
 			}
 			
 		}
 	});
 	$('#sel').change(function() {
 		if($('#sel').val()=="") {
 			$('#domain').prop('readOnly',false).val("").focus();
 		} else {
 			$('#domain').prop('readOnly',true).val($('#sel').val());
 		}
 	});
 	
 	$('#postCheck').on('click', function() {
 		window.open("post.html","post","width=400, height = 500");
 	});
 });