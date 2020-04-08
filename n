[1mdiff --git a/src/main/java/br/ce/wcaquino/tasksfrontend/controller/TasksController.java b/src/main/java/br/ce/wcaquino/tasksfrontend/controller/TasksController.java[m
[1mindex e1fa5fe..2fc1389 100644[m
[1m--- a/src/main/java/br/ce/wcaquino/tasksfrontend/controller/TasksController.java[m
[1m+++ b/src/main/java/br/ce/wcaquino/tasksfrontend/controller/TasksController.java[m
[36m@@ -50,7 +50,7 @@[m [mpublic class TasksController {[m
 			RestTemplate restTemplate = new RestTemplate();[m
 			restTemplate.postForObject([m
 					getBackendURL() + "/tasks-backend/todo", todo, Object.class);			[m
[31m-			model.addAttribute("sucess", "Sucess!");[m
[32m+[m			[32mmodel.addAttribute("success", "Success!");[m
 			return "index";[m
 		} catch(Exception e) {[m
 			Pattern compile = Pattern.compile("message\":\"(.*)\",");[m
[1mdiff --git a/src/main/resources/templates/index.html b/src/main/resources/templates/index.html[m
[1mindex 67eec39..c20ee56 100644[m
[1m--- a/src/main/resources/templates/index.html[m
[1m+++ b/src/main/resources/templates/index.html[m
[36m@@ -12,7 +12,7 @@[m
 			<h1>Tasks</h1>[m
 			<p class="lead">A very simple task management tool</p>[m
 		</div>[m
[31m-		<p class="alert alert-success" role="alert" th:if="${sucess != null}" th:text="${sucess}" id="message" />[m
[32m+[m		[32m<p class="alert alert-success" role="alert" th:if="${success != null}" th:text="${success}" id="message" />[m
 		<div th:switch="${todos.size()}">[m
     		<h2 th:case="0">No tasks... enjoy your day!</h2>[m
         	<div th:case="*">[m
