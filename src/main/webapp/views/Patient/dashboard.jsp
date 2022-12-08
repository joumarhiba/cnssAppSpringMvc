<%@ page import="com.cnss.controller.LoginController" %>
<%@ page import="java.util.List" %>
<%@ page import="com.cnss.model.Dossier" %>
<%@ page import="com.cnss.model.Patient" %><%--
  Created by IntelliJ IDEA.
  User: YC
  Date: 06/12/2022
  Time: 11:15
  To change this template use File | Settings | File Templates.
--%>
<%@ page contentType="text/html;charset=UTF-8" language="java" isELIgnored="false" %>
<html>
<head>
    <title>Dashboard Patient</title>
    <link href="https://unpkg.com/tailwindcss@^2.0/dist/tailwind.min.css" rel="stylesheet" />
</head>
<body class="container">
 <div class="flex flex-col">
     <div class="overflow-x-auto sm:-mx-6 lg:-mx-8">
         <div class="py-2 inline-block min-w-full sm:px-6 lg:px-8">
             <div class="overflow-hidden">

                 <table class="min-w-full">
                     <thead class="bg-white border-b">
                     <tr>
                         <th scope="col" class="text-sm font-medium text-gray-900 px-6 py-4 text-left">
                             Id
                         </th>
                         <th scope="col" class="text-sm font-medium text-gray-900 px-6 py-4 text-left">
                             Owner
                         </th>
                         <th scope="col" class="text-sm font-medium text-gray-900 px-6 py-4 text-left">
                             Status
                         </th>
                     </tr>
                     </thead>
                     <%
                         LoginController loginController = new LoginController();
                         List<Dossier> dossiers = loginController.getPatientFolders();
                         for(Dossier dossier : dossiers){
                     %>
                     <tbody>
                     <tr class="bg-gray-100 border-b">
                         <td class="px-6 py-4 whitespace-nowrap text-sm font-medium text-gray-900"><%=dossier.getId()%></td>
                         <td class="text-sm text-gray-900 font-light px-6 py-4 whitespace-nowrap">
                             <%= dossier.getOwner()%>
                         </td>
                         <td class="text-sm text-gray-900 font-light px-6 py-4 whitespace-nowrap">
                             <%=dossier.getStatus()%>
                         </td>

                     </tr>
                        <%
                            }
                        %>

                     </tbody>
                 </table>
             </div>
         </div>
     </div>
 </div>
</body>
</html>
