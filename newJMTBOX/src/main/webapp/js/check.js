		// 아이디 중복체크
   		$('#exampleInputEmail1').focusout(function(){
   			let exampleInputEmail1 = $('#exampleInputEmail1').val()
   			console.log(exampleInputEmail1)
   			$.ajax({
   				url : "IdCheckService",
   				type : "post",
   				data : {"exampleInputEmail1":exampleInputEmail1},
   				dataType: "json",
   				success : function(data){
   					console.log(data)
   					let result = data
   					if(result == 0){
   						$('#emailHelp').css('color','red')
   						$('#emailHelp').text('이미 존재하는 아이디 입니다.')
   					}else{
   						$('#emailHelp').css('color','green')
   						$('#emailHelp').text('사용가능한 아이디 입니다.')
   					}
   				},
   				error:function(){
   					console.log('서버요청실패')
   				}
   			})
   		})
   		//닉네임 중복체크
   		$('#exampleInputNick1').focusout(function(){
   			let exampleInputNick1 = $('#exampleInputNick1').val()
   			$.ajax({
   				url:"nickCheckService",
   				type : "post",
   				data : {"exampleInputNick1":exampleInputNick1},
   				dataType : "json",
   				success : function(data){
   					let result = data
   					if(result == 0){
   						$('#nickHelp').css('color','red')
   						$('#nickHelp').text('이미 존재하는 닉네임 입니다.')
   					}else{
   						$('#nickHelp').css('color','green')
   						$('#nickHelp').text('사용가능한 닉네임입니다')
   					}
   				}
   			})
   		})