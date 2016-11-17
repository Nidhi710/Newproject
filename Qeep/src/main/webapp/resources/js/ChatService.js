app.service("ChatService",function($q,$timeout){
	var srvice ={}, listern = $q.defer(),socket={
		client : null,
		stomp: null
	},messageIds =[];
	service.RECONNECT_TIMEOUT = 30000;
	service.SOCKET_URL = "/Qeep/chat";
	service.CHAT_TOPIC= "/topic/message";
	service.CHAT_BROKER ="/app/chat";
	
	service.receive = function(){
		
		console.log("receive")
		return listern.promise;
	};
	 service.send = function(message){
		 console.log("send")
		 var m_id =Math.floor(Math.random()*1000000);
		 socket.stomp.send(service.CHAT_BROKER,{
			 priority : 9
		 },JSON.stringfy({
			 message:message,
			 m_id : m_id
		 }));
		 messageIds.push(m_id);
	 };
	 var reconnect = function(){
		 console.log("reconnect")
		 $timeout(function(){
			 initialize();
		 },this.RECONNECT_TIMEOUT);
	 };
	 var getMessage = function(data){
		 consile.log("getMessage")
		 var message = JSON.parse(data),out ={};
		 out.message = message.message;
		 out.time = new Data(message.time);
		 return out;
	 };
	 var startListern = function(){
		 console.log("receive")
		 socket.stomp.subscribe(service.CHAT_TOPIC, function(data){
			 listern.notify(getMessage(data.body));
		 });	
		
	 };
	 var initialize = function(){
		 console.log("initialize")
		 socket.client = new SockJS(service.SOCKET_URL);
		 socket.stomp = Stomp.over(socket.client);
		 socket.stomp.connect({},startListern);
		 socket.stomp.onclose = reconnect;
		 
	 };
	 initialize();
	 return service;
});