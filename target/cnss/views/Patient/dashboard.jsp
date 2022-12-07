<%--
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
                 <form action="/folders" method="post">
                     <button type="submit" >get Folders</button>

                 </form>
                 <table class="min-w-full">
                     <thead class="bg-white border-b">
                     <tr>
                         <th scope="col" class="text-sm font-medium text-gray-900 px-6 py-4 text-left">
                             #
                         </th>
                         <th scope="col" class="text-sm font-medium text-gray-900 px-6 py-4 text-left">
                             First
                         </th>
                         <th scope="col" class="text-sm font-medium text-gray-900 px-6 py-4 text-left">
                             Last
                         </th>
                         <th scope="col" class="text-sm font-medium text-gray-900 px-6 py-4 text-left">
                             Handle
                         </th>
                     </tr>
                     </thead>
                     <tbody>
                     <tr class="bg-gray-100 border-b">
                         <td class="px-6 py-4 whitespace-nowrap text-sm font-medium text-gray-900">1</td>
                         <td class="text-sm text-gray-900 font-light px-6 py-4 whitespace-nowrap">
                             Mark : <%request.getAttribute("dossiers");%>
                         </td>
                         <td class="text-sm text-gray-900 font-light px-6 py-4 whitespace-nowrap">
                             Otto
                         </td>
                         <td class="text-sm text-gray-900 font-light px-6 py-4 whitespace-nowrap">
                             @mdo
                         </td>
                     </tr>
                     <tr class="bg-white border-b">
                         <td class="px-6 py-4 whitespace-nowrap text-sm font-medium text-gray-900">2</td>
                         <td class="text-sm text-gray-900 font-light px-6 py-4 whitespace-nowrap">
                             Jacob
                         </td>
                         <td class="text-sm text-gray-900 font-light px-6 py-4 whitespace-nowrap">
                             Thornton
                         </td>
                         <td class="text-sm text-gray-900 font-light px-6 py-4 whitespace-nowrap">
                             @fat
                         </td>
                     </tr>
                     <tr class="bg-gray-100 border-b">
                         <td class="px-6 py-4 whitespace-nowrap text-sm font-medium text-gray-900">3</td>
                         <td colspan="2" class="text-sm text-gray-900 font-light px-6 py-4 whitespace-nowrap text-center">
                             Larry the Bird
                         </td>
                         <td class="text-sm text-gray-900 font-light px-6 py-4 whitespace-nowrap">
                             @twitter
                         </td>
                     </tr>
                     </tbody>
                 </table>
             </div>
         </div>
     </div>
 </div>
</body>
</html>
