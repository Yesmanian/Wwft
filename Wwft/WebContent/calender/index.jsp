<%@ page language="java" contentType="text/html; charset=EUC-KR"
    pageEncoding="EUC-KR"%>
    
<!DOCTYPE html>
<html>
<head>
<meta charset='euc-kr' />
<link href='../resources/packages/core/main.css' rel='stylesheet' />
<link href='../resources/packages/daygrid/main.css' rel='stylesheet' />
<link href='../resources/packages/timegrid/main.css' rel='stylesheet' />
<link href='../resources/packages/list/main.css' rel='stylesheet' />
<script src='../resources/packages/core/main.js'></script>
<script src='../resources/packages/interaction/main.js'></script>
<script src='../resources/packages/daygrid/main.js'></script>
<script src='../resources/packages/timegrid/main.js'></script>
<script src='../resources/packages/list/main.js'></script>
<script src="http://code.jquery.com/jquery-2.1.4.min.js"></script>
<script>

  document.addEventListener('DOMContentLoaded', function() {
    var calendarEl = document.getElementById('calendar');
    
   /*  $.ajax( 
			{
				url : "/product/json/getProduct/10010" ,
				method : "GET" ,
				dataType : "json" ,
				headers : {
					"Accept" : "application/json",
					"Content-Type" : "application/json"
				},
				success : function(JSONData , status) {

					
					alert("JSONData : \n"+JSONData.prodName);
					
				}
		}); */

    var calendar = new FullCalendar.Calendar(calendarEl, {
      plugins: [ 'interaction', 'dayGrid', 'timeGrid', 'list' ],
      header: {
        left: 'prev,next today',
        center: 'title',
        right: 'dayGridMonth,timeGridWeek,timeGridDay,listMonth'
      },
   /*    defaultDate: '2020-02-12' */
      navLinks: true, // can click day/week names to navigate views
      businessHours: true, // display business hours
      editable: true,
     
      eventSources: [{
  		events: function(info, successCallback, failureCallback) {
  			$.ajax({
  				url: '/event/json/getEventList',
  				type: 'GET',
  				dataType: 'json',
  				
  				success: function(data) {
            console.log(JSON.stringify(data))
            var events = [];
            $.each(data.event, function(index, item){
              console.log(item.title)
              events.push({
                title : item.title,
                start : item.start,
                end : item.end

              });
            });
  					successCallback(events);
  				}
        });
        
  		}
  	}]
			
		});
    calendar.render(); 
  });

</script>
<style>

  body {
    margin: 40px 10px;
    padding: 0;
    font-family: Arial, Helvetica Neue, Helvetica, sans-serif;
    font-size: 14px;
  }

  #calendar {
    max-width: 900px;
    margin: 0 auto;
  }

</style>
</head>
<body>

  <div id='calendar'></div>

</body>
</html>
