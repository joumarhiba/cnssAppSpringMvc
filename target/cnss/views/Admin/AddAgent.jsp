<%--
  Created by IntelliJ IDEA.
  User: YC
  Date: 02/12/2022
  Time: 11:00
  To change this template use File | Settings | File Templates.
--%>
<%@ page contentType="text/html;charset=UTF-8" language="java" %>
<html>
<head>
    <title>Add agent</title>
    <link href="https://cdn.jsdelivr.net/npm/bootstrap@5.0.2/dist/css/bootstrap.min.css" rel="stylesheet" integrity="sha384-EVSTQN3/azprG1Anm3QDgpJLIm9Nao0Yz1ztcQTwFspd3yD65VohhpuuCOmLASjC" crossorigin="anonymous">
    <link rel="stylesheet" href="https://unpkg.com/tailwindcss@2.2.19/dist/tailwind.min.css" />
    <script src="https://cdn.jsdelivr.net/npm/bootstrap@5.0.2/dist/js/bootstrap.bundle.min.js" integrity="sha384-MrcW6ZMFYlzcLA8Nl+NtUVF0sA7MsXsP1UyJoMp4YLEuNSfAP+JcXn/tWtIaxVXM" crossorigin="anonymous"></script>
</head>
<body class="flex bg-gray-100 min-h-screen">
<aside class="hidden sm:flex sm:flex-col">
    <a href="#" class="inline-flex items-center justify-center h-20 w-20 bg-blue-900 hover:bg-blue-900 ">
      <img src="/images/logo.png">
    </a>
    <div class="flex-grow flex flex-col justify-between text-gray-500 bg-white">
        <nav class="flex flex-col mx-4 my-6 space-y-4">
            <a href="/login" class="inline-flex items-center justify-center py-3 hover:text-blue-900 hover:bg-white focus:text-blue-900 focus:bg-blue-900 rounded-lg">
                <span class="sr-only">Folders</span>
                <svg aria-hidden="true" fill="none" viewBox="0 0 24 24" stroke="currentColor" class="h-6 w-6">
                    <path stroke-linecap="round" stroke-linejoin="round" stroke-width="2" d="M3 7v10a2 2 0 002 2h14a2 2 0 002-2V9a2 2 0 00-2-2h-6l-2-2H5a2 2 0 00-2 2z" />
                </svg>
            </a>
            <a href="" class="inline-flex items-center justify-center py-3 hover:text-gray-400 hover:bg-blue-900 focus:text-blue-900 focus:bg-blue-900 rounded-lg">
                <span class="sr-only">Messages</span>
                <svg aria-hidden="true" fill="none" viewBox="0 0 24 24" stroke="currentColor" class="h-6 w-6">
                    <path stroke-linecap="round" stroke-linejoin="round" stroke-width="2" d="M3 8l7.89 5.26a2 2 0 002.22 0L21 8M5 19h14a2 2 0 002-2V7a2 2 0 00-2-2H5a2 2 0 00-2 2v10a2 2 0 002 2z" />
                </svg>
            </a>
            <a href="#" class="inline-flex items-center justify-center py-3 hover:text-gray-400 hover:bg-blue-900 focus:text-blue-900 focus:bg-blue-900 rounded-lg">
                <span class="sr-only">Documents</span>
                <svg aria-hidden="true" fill="none" viewBox="0 0 24 24" stroke="currentColor" class="h-6 w-6">
                    <path stroke-linecap="round" stroke-linejoin="round" stroke-width="2" d="M7 21h10a2 2 0 002-2V9.414a1 1 0 00-.293-.707l-5.414-5.414A1 1 0 0012.586 3H7a2 2 0 00-2 2v14a2 2 0 002 2z" />
                </svg>
            </a>
        </nav>
        <div class="inline-flex items-center justify-center h-20 w-20 border-t border-gray-700">
            <button class="p-3 hover:text-gray-400 hover:bg-gray-700 focus:text-gray-400 focus:bg-gray-700 rounded-lg">
                <span class="sr-only">Settings</span>
                <svg aria-hidden="true" fill="none" viewBox="0 0 24 24" stroke="currentColor" class="h-6 w-6">
                    <path stroke-linecap="round" stroke-linejoin="round" stroke-width="2" d="M10.325 4.317c.426-1.756 2.924-1.756 3.35 0a1.724 1.724 0 002.573 1.066c1.543-.94 3.31.826 2.37 2.37a1.724 1.724 0 001.065 2.572c1.756.426 1.756 2.924 0 3.35a1.724 1.724 0 00-1.066 2.573c.94 1.543-.826 3.31-2.37 2.37a1.724 1.724 0 00-2.572 1.065c-.426 1.756-2.924 1.756-3.35 0a1.724 1.724 0 00-2.573-1.066c-1.543.94-3.31-.826-2.37-2.37a1.724 1.724 0 00-1.065-2.572c-1.756-.426-1.756-2.924 0-3.35a1.724 1.724 0 001.066-2.573c-.94-1.543.826-3.31 2.37-2.37.996.608 2.296.07 2.572-1.065z" />
                    <path stroke-linecap="round" stroke-linejoin="round" stroke-width="2" d="M15 12a3 3 0 11-6 0 3 3 0 016 0z" />
                </svg>
            </button>
        </div>
    </div>
</aside>
<div class="flex-grow text-gray-800">
    <header class="flex items-center h-20 px-6 sm:px-10 bg-white">
        <button class="block sm:hidden relative flex-shrink-0 p-2 mr-2 text-gray-600 hover:bg-gray-100 hover:text-gray-800 focus:bg-gray-100 focus:text-gray-800 rounded-full">
            <span class="sr-only">Menu</span>
            <svg aria-hidden="true" fill="none" viewBox="0 0 24 24" stroke="currentColor" class="h-6 w-6">
                <path stroke-linecap="round" stroke-linejoin="round" stroke-width="2" d="M4 6h16M4 12h16M4 18h7" />
            </svg>
        </button>
        <div class="relative w-full max-w-md sm:-ml-2">
            <svg aria-hidden="true" viewBox="0 0 20 20" fill="currentColor" class="absolute h-6 w-6 mt-2.5 ml-2 text-gray-400">
                <path fill-rule="evenodd" d="M8 4a4 4 0 100 8 4 4 0 000-8zM2 8a6 6 0 1110.89 3.476l4.817 4.817a1 1 0 01-1.414 1.414l-4.816-4.816A6 6 0 012 8z" clip-rule="evenodd" />
            </svg>
            <input type="text" role="search" placeholder="Search..." class="py-2 pl-10 pr-4 w-full border-4 border-transparent placeholder-gray-400 focus:bg-gray-50 rounded-lg" />
        </div>
        <div class="flex flex-shrink-0 items-center ml-auto">
            <button class="inline-flex items-center p-2 hover:bg-gray-100 focus:bg-gray-100 rounded-lg">
                <span class="sr-only">User Menu</span>
                <div class="hidden md:flex md:flex-col md:items-end md:leading-tight">
                    <span class="font-semibold">Grace Simmons</span>
                    <span class="text-sm text-gray-600">Admin</span>
                </div>
                <span class="h-12 w-12 ml-2 sm:ml-3 mr-2 bg-gray-100 rounded-full overflow-hidden">
            <img src="https://randomuser.me/api/portraits/women/68.jpg" alt="user profile photo" class="h-full w-full object-cover">
          </span>
                <svg aria-hidden="true" viewBox="0 0 20 20" fill="currentColor" class="hidden sm:block h-6 w-6 text-gray-300">
                    <path fill-rule="evenodd" d="M5.293 7.293a1 1 0 011.414 0L10 10.586l3.293-3.293a1 1 0 111.414 1.414l-4 4a1 1 0 01-1.414 0l-4-4a1 1 0 010-1.414z" clip-rule="evenodd" />
                </svg>
            </button>
            <div class="border-l pl-3 ml-3 space-x-1">
                <button class="relative p-2 text-gray-400 hover:bg-gray-100 hover:text-gray-600 focus:bg-gray-100 focus:text-gray-600 rounded-full">
                    <span class="sr-only">Notifications</span>
                    <span class="absolute top-0 right-0 h-2 w-2 mt-1 mr-2 bg-red-500 rounded-full"></span>
                    <span class="absolute top-0 right-0 h-2 w-2 mt-1 mr-2 bg-red-500 rounded-full animate-ping"></span>
                    <svg aria-hidden="true" fill="none" viewBox="0 0 24 24" stroke="currentColor" class="h-6 w-6">
                        <path stroke-linecap="round" stroke-linejoin="round" stroke-width="2" d="M15 17h5l-1.405-1.405A2.032 2.032 0 0118 14.158V11a6.002 6.002 0 00-4-5.659V5a2 2 0 10-4 0v.341C7.67 6.165 6 8.388 6 11v3.159c0 .538-.214 1.055-.595 1.436L4 17h5m6 0v1a3 3 0 11-6 0v-1m6 0H9" />
                    </svg>
                </button>
                <button class="relative p-2 text-gray-400 hover:bg-gray-100 hover:text-gray-600 focus:bg-gray-100 focus:text-gray-600 rounded-full">
                    <span class="sr-only">Log out</span>
                    <svg aria-hidden="true" fill="none" viewBox="0 0 24 24" stroke="currentColor" class="h-6 w-6">
                        <path stroke-linecap="round" stroke-linejoin="round" stroke-width="2" d="M17 16l4-4m0 0l-4-4m4 4H7m6 4v1a3 3 0 01-3 3H6a3 3 0 01-3-3V7a3 3 0 013-3h4a3 3 0 013 3v1" />
                    </svg>
                </button>
            </div>
        </div>
    </header>
    <div class="w-full flex items-center justify-center bg-gray-50 py-12 px-4 sm:px-6 lg:px-8">
        <div class="max-w-md w-full space-y-8">
            <div>
                <h2 class=" text-center text-3xl font-extrabold text-gray-900">
                    Add Agent Form
                </h2>
            </div>

            <div class="rounded bg-white max-w-md rounded overflow-hidden shadow-xl p-5">

                <form class="space-y-4" action="insertAgent" method="POST" modelAttribute="agent">
                    <input type="hidden" name="role" value="agent">
                    <div class="rounded-md -space-y-px">
                        <div class="grid gap-6">
                            <div class="col-span-12">
                                <label for="email" class="block text-sm font-medium text-gray-700">Email address</label>
                                <input type="text" name="email" id="email" autocomplete=off class="mt-1 focus:outline-none focus:border block w-full shadow-sm sm:text-sm border-gray-300 rounded-md p-2">
                            </div>

                            <div class="col-span-12">
                                <label for="password" class="block text-sm font-medium text-gray-700">Password</label>
                                <input type="password" name="password" id="password" autocomplete=off class="mt-1 focus:outline-none focus:border block w-full shadow-sm sm:text-sm rounded-md p-2">
                            </div>
                            <div class="col-span-12">
                                <label for="checkingCode" class="block text-sm font-medium text-gray-700">checkingCode</label>
                                <input type="number" name="chekingCode" id="checkingCode" autocomplete=off class="mt-1 focus:outline-none focus:border block w-full shadow-sm sm:text-sm rounded-md p-2">
                            </div>
                        </div>
                    </div>

                    <div>
                        <button type="submit" class="group relative w-full flex justify-center py-2 px-4 border border-transparent text-sm font-medium rounded-md text-white bg-blue-900 hover:bg-blue-900 focus:outline-none focus:ring-2 focus:ring-offset-2 focus:ring-blue-900 p-2">
							<span class="absolute left-0 inset-y-0 flex items-center pl-3">
								<svg class="h-5 w-5 text-indigo-500 group-hover:text-indigo-400" xmlns="http://www.w3.org/2000/svg" viewBox="0 0 20 20" fill="currentColor" aria-hidden="True">
									<path fill-rule="evenodd" d="M5 9V7a5 5 0 0110 0v2a2 2 0 012 2v5a2 2 0 01-2 2H5a2 2 0 01-2-2v-5a2 2 0 012-2zm8-2v2H7V7a3 3 0 016 0z" clip-rule="evenodd" />
								</svg>
							</span>
                            Save
                        </button>
                    </div>
                </form>
            </div>
        </div>
    </div>
</div>


</body>
</html>
