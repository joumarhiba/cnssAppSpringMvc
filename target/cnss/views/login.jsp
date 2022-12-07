<%--
  Created by IntelliJ IDEA.
  User: YC
  Date: 04/12/2022
  Time: 14:19
  To change this template use File | Settings | File Templates.
--%>
<%@ page contentType="text/html;charset=UTF-8" language="java" %>
<html>
<head>
    <title>login</title>
    <link href="https://unpkg.com/tailwindcss@^2.0/dist/tailwind.min.css" rel="stylesheet" />
</head>
<body>

<!-- component -->
<div class="h-screen md:flex">
    <div
            class="relative overflow-hidden md:flex w-1/2 bg-blue-900 justify-around items-center hidden">
        <div>
            <h1 class="text-white font-bold text-4xl font-sans">MaCnss</h1>
            <p class="text-white mt-1">BIENVENUE SUR LE PORTAIL MACNSS</p>
        </div>
        <div class="absolute -bottom-32 -left-40 w-80 h-80 border-4 rounded-full border-opacity-30 border-t-8"></div>
        <div class="absolute -bottom-40 -left-20 w-80 h-80 border-4 rounded-full border-opacity-30 border-t-8"></div>
        <div class="absolute -top-40 -right-0 w-80 h-80 border-4 rounded-full border-opacity-30 border-t-8"></div>
        <div class="absolute -top-20 -right-20 w-80 h-80 border-4 rounded-full border-opacity-30 border-t-8"></div>
    </div>
    <div class="flex w-2/3 justify-center py-10 items-center bg-white">
        <form class="bg-white" action="/login" method="post">
            <h1 class="text-gray-800 font-bold text-2xl mb-1">Hello Again!</h1>
            <p class="text-sm font-normal text-gray-600 mb-7">Welcome Back</p>

            <div class="flex w-full items-center border-2 py-2 px-3 rounded-md mb-4">
                <svg xmlns="http://www.w3.org/2000/svg" class="h-5 w-5 text-gray-400" fill="none"
                     viewBox="0 0 24 24" stroke="currentColor">
                    <path stroke-linecap="round" stroke-linejoin="round" stroke-width="2"
                          d="M16 12a4 4 0 10-8 0 4 4 0 008 0zm0 0v1.5a2.5 2.5 0 005 0V12a9 9 0 10-9 9m4.5-1.206a8.959 8.959 0 01-4.5 1.207" />
                </svg>
                <input class="pl-2 outline-none border-none" type="text" autocomplete="off" name="email" id="email" placeholder="Email Address" />
            </div>
            <div class="flex items-center border-2 py-2 px-3 rounded-md mb-4">
                <svg xmlns="http://www.w3.org/2000/svg" class="h-5 w-5 text-gray-400" viewBox="0 0 20 20"
                     fill="currentColor">
                    <path fill-rule="evenodd"
                          d="M5 9V7a5 5 0 0110 0v2a2 2 0 012 2v5a2 2 0 01-2 2H5a2 2 0 01-2-2v-5a2 2 0 012-2zm8-2v2H7V7a3 3 0 016 0z"
                          clip-rule="evenodd" />
                </svg>
                <input class="pl-2 outline-none border-none" type="password" autocomplete="off" name="password" id="password" placeholder="Password" />
            </div>
            <div class="flex items-center border-2 py-2 px-3 rounded-md mb-4">
                <svg xmlns="http://www.w3.org/2000/svg" class="h-5 w-5 text-gray-400" viewBox="0 0 20 20"
                     fill="currentColor">
                    <path fill-rule="evenodd"
                          d="M5 9V7a5 5 0 0110 0v2a2 2 0 012 2v5a2 2 0 01-2 2H5a2 2 0 01-2-2v-5a2 2 0 012-2zm8-2v2H7V7a3 3 0 016 0z"
                          clip-rule="evenodd" />
                </svg>
                <select name="role" class=" focus:outline-none focus:ring-2 pl-2 outline-none border-none">
                    <option >Choose Your Profile</option>
                    <option value="admin">admin</option>
                    <option value="agent">agent</option>
                    <option value="patient">patient</option>
                </select>
            </div>
            <button type="submit" class="block w-full bg-blue-900 mt-4 py-2 rounded-md text-white font-semibold mb-2">Login</button>
        </form>
    </div>
</div>
</body>
</html>
