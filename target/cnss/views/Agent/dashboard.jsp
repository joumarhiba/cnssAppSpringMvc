<%@ page import="com.cnss.controller.AgentController" %>
<%@ page import="java.util.List" %>
<%@ page import="com.cnss.model.Dossier" %>

<%@ page contentType="text/html;charset=UTF-8" language="java" %>
<html>
<head>
    <title>Dashboard Agent</title>
    <link href="https://unpkg.com/tailwindcss@^2.0/dist/tailwind.min.css" rel="stylesheet" />

</head>
<body>
<!-- component -->
<div class="bg-gray-100 dark:bg-gray-900 dark:text-white text-gray-600 h-screen flex overflow-hidden text-sm">
    <div class="bg-white dark:bg-gray-900 dark:border-gray-800 w-20 flex-shrink-0 border-r border-gray-200 flex-col hidden sm:flex">
        <div class="h-16 text-blue-500 flex items-center justify-center">
            <svg class="w-9" xmlns="http://www.w3.org/2000/svg" fill="none" viewBox="0 0 54 33">
                <path fill="currentColor" fill-rule="evenodd" d="M27 0c-7.2 0-11.7 3.6-13.5 10.8 2.7-3.6 5.85-4.95 9.45-4.05 2.054.513 3.522 2.004 5.147 3.653C30.744 13.09 33.808 16.2 40.5 16.2c7.2 0 11.7-3.6 13.5-10.8-2.7 3.6-5.85 4.95-9.45 4.05-2.054-.513-3.522-2.004-5.147-3.653C36.756 3.11 33.692 0 27 0zM13.5 16.2C6.3 16.2 1.8 19.8 0 27c2.7-3.6 5.85-4.95 9.45-4.05 2.054.514 3.522 2.004 5.147 3.653C17.244 29.29 20.308 32.4 27 32.4c7.2 0 11.7-3.6 13.5-10.8-2.7 3.6-5.85 4.95-9.45 4.05-2.054-.513-3.522-2.004-5.147-3.653C23.256 19.31 20.192 16.2 13.5 16.2z" clip-rule="evenodd" />
            </svg>
        </div>
        <div class="flex mx-auto flex-grow mt-4 flex-col text-gray-400 space-y-4">
            <a href="/dashboardAgent" class="h-10 w-12 dark:text-gray-500 rounded-md flex items-center justify-center">
                <svg viewBox="0 0 24 24" class="h-5" stroke="currentColor" stroke-width="2" fill="none" stroke-linecap="round" stroke-linejoin="round">
                    <path d="M3 9l9-7 9 7v11a2 2 0 0 1-2 2H5a2 2 0 0 1-2-2z"></path>
                    <polyline points="9 22 9 12 15 12 15 22"></polyline>
                </svg>
            </a>
            <a href="/addFolder" class="h-10 w-12 dark:text-gray-500 rounded-md flex items-center justify-center">
                <svg viewBox="0 0 24 24" class="h-5" stroke="currentColor" stroke-width="2" fill="none" stroke-linecap="round" stroke-linejoin="round">
                    <path d="M22 19a2 2 0 0 1-2 2H4a2 2 0 0 1-2-2V5a2 2 0 0 1 2-2h5l2 3h9a2 2 0 0 1 2 2z"></path>
                    <line x1="12" y1="11" x2="12" y2="17"></line>
                    <line x1="9" y1="14" x2="15" y2="14"></line>
                </svg>
            </a>
            <button class="h-10 w-12 dark:text-gray-500 rounded-md flex items-center justify-center">
                <svg viewBox="0 0 24 24" class="h-5" stroke="currentColor" stroke-width="2" fill="none" stroke-linecap="round" stroke-linejoin="round">
                    <rect x="3" y="3" width="7" height="7"></rect>
                    <rect x="14" y="3" width="7" height="7"></rect>
                    <rect x="14" y="14" width="7" height="7"></rect>
                    <rect x="3" y="14" width="7" height="7"></rect>
                </svg>
            </button>
        </div>
    </div>

    <div class="flex-grow overflow-hidden h-full flex flex-col">
        <div class="flex-grow flex overflow-x-hidden">
            <div class="flex-grow bg-white dark:bg-gray-900 overflow-y-auto">
                <div class="sm:px-7 sm:pt-7 px-4 pt-4 flex flex-col w-full border-b border-gray-200 bg-white dark:bg-gray-900 dark:text-white dark:border-gray-800 sticky top-0">
                    <div class="flex w-full items-center">
                        <div class="flex items-center text-3xl text-gray-900 dark:text-white">
                            <img src="https://assets.codepen.io/344846/internal/avatars/users/default.png?fit=crop&format=auto&height=512&version=1582611188&width=512" class="w-12 mr-4 rounded-full" alt="profile" />
                            Mert Cukuren
                        </div>
                    </div>
                    <div class="flex items-center space-x-3 sm:mt-7 mt-4">
                        <a href="#" class="px-3 border-b-2 border-blue-900 text-blue-900 dark:text-white dark:border-white pb-1.5">Dossiers</a>
                    </div>
                </div>
            <div class="flex flex-row container p-4">
                <div class="bg-white p-3 w-full flex flex-col rounded-md dark:bg-gray-800 shadow mr-4">
                    <div class="flex xl:flex-row flex-col items-center font-medium text-gray-900 dark:text-white pb-2 mb-2 xl:border-b border-gray-200 border-opacity-75 dark:border-gray-700 w-full">
                        <img src="https://images.unsplash.com/photo-1438761681033-6461ffad8d80?ixlib=rb-0.3.5&q=80&fm=jpg&crop=faces&fit=crop&h=200&w=200&s=046c29138c1335ef8edee7daf521ba50" class="w-7 h-7 mr-2 rounded-full" alt="profile" />
                        owner
                    </div>
                    <div class="flex items-center w-full">
                        <div class="text-xs py-1 px-2 leading-none dark:bg-gray-900 rounded-md">
                            <form action="checkFolder" method="post">
                                <input name="id" value="2" type="hidden">
                                <button type="submit" class="text-xs py-1 px-2 leading-none dark:bg-gray-900 bg-green-100 text-green-600 rounded-md">Check</button>
                            </form>
                        </div>
                        <div class="text-xs py-1 px-2 leading-none dark:bg-gray-900 rounded-md">
                            <form action="refusFolder" method="post">
                                <input name="id" value="1" type="hidden">
                                <button type="submit" class="text-xs py-1 px-2 leading-none dark:bg-gray-900 bg-red-100 text-red-600 rounded-md">Refus</button>
                            </form>
                        </div>
                        <div class="ml-auto text-xs text-gray-500">en-cours</div>
                    </div>
                </div>
                <div class="bg-white p-3 w-full flex flex-col rounded-md dark:bg-gray-800 shadow-lg relative focus:outline-none mr-4">
                    <div class="flex xl:flex-row flex-col items-center font-medium text-gray-900 dark:text-white pb-2 mb-2 xl:border-b border-gray-200 border-opacity-75 dark:border-gray-700 w-full">
                        <img src="https://assets.codepen.io/344846/internal/avatars/users/default.png?fit=crop&format=auto&height=512&version=1582611188&width=512" class="w-7 h-7 mr-2 rounded-full" alt="profile" />
                        owner
                    </div>
                    <div class="flex items-center w-full">
                        <div class="text-xs py-1 px-2 leading-none dark:bg-gray-900 rounded-md">
                            <form action="checkFolder" method="post">
                                <input name="id" value="5" type="hidden">
                                <button type="submit" class="text-xs py-1 px-2 leading-none dark:bg-gray-900 bg-green-100 text-green-600 rounded-md">Check</button>
                            </form>
                        </div>
                        <div class="text-xs py-1 px-2 leading-none dark:bg-gray-900 rounded-md">
                            <form action="refusFolder" method="post">
                                <input name="id" value="1" type="hidden">
                                <button type="submit" class="text-xs py-1 px-2 leading-none dark:bg-gray-900 bg-red-100 text-red-600 rounded-md">Check</button>
                            </form>
                        </div>
                        <div class="ml-auto text-xs text-gray-500">en-cours</div>
                    </div>
                </div>
                <div class="bg-white p-3 w-full flex flex-col rounded-md dark:bg-gray-800 shadow-lg relative focus:outline-none mr-4">
                    <div class="flex xl:flex-row flex-col items-center font-medium text-gray-900 dark:text-white pb-2 mb-2 xl:border-b border-gray-200 border-opacity-75 dark:border-gray-700 w-full">
                        <img src="https://assets.codepen.io/344846/internal/avatars/users/default.png?fit=crop&format=auto&height=512&version=1582611188&width=512" class="w-7 h-7 mr-2 rounded-full" alt="profile" />
                        owner
                    </div>
                    <div class="flex items-center w-full">
                        <div class="text-xs py-1 px-2 leading-none dark:bg-gray-900 rounded-md">
                            <form action="checkFolder" method="post">
                                <input name="id" value="4" type="hidden">
                                <button type="submit" class="text-xs py-1 px-2 leading-none dark:bg-gray-900 bg-green-100 text-green-600 rounded-md">Check</button>
                            </form>
                        </div>
                        <div class="text-xs py-1 px-2 leading-none dark:bg-gray-900 rounded-md">
                            <form action="refusFolder" method="post">
                                <input name="id" value="2" type="hidden">
                                <button type="submit" class="text-xs py-1 px-2 leading-none dark:bg-gray-900 bg-red-100 text-red-600 rounded-md">Check</button>
                            </form>
                        </div>
                        <div class="ml-auto text-xs text-gray-500">en-cours</div>
                    </div>
                </div>
                <div class="bg-white p-3 w-full flex flex-col rounded-md dark:bg-gray-800 shadow-lg relative focus:outline-none mr-4">
                    <div class="flex xl:flex-row flex-col items-center font-medium text-gray-900 dark:text-white pb-2 mb-2 xl:border-b border-gray-200 border-opacity-75 dark:border-gray-700 w-full">
                        <img src="https://assets.codepen.io/344846/internal/avatars/users/default.png?fit=crop&format=auto&height=512&version=1582611188&width=512" class="w-7 h-7 mr-2 rounded-full" alt="profile" />
                        owner
                    </div>
                    <div class="flex items-center w-full">
                        <div class="text-xs py-1 px-2 leading-none dark:bg-gray-900 rounded-md">
                            <form action="checkFolder" method="post">
                                <input name="id" value="1" type="hidden">
                                <button type="submit" class="text-xs py-1 px-2 leading-none dark:bg-gray-900 bg-green-100 text-green-600 rounded-md">Check</button>
                            </form>
                        </div>
                        <div class="text-xs py-1 px-2 leading-none dark:bg-gray-900 rounded-md">
                            <form action="refusFolder" method="post">
                                <input name="id" value="2" type="hidden">
                                <button type="submit" class="text-xs py-1 px-2 leading-none dark:bg-gray-900 bg-red-100 text-red-600 rounded-md">Check</button>
                            </form>
                        </div>
                        <div class="ml-auto text-xs text-gray-500">en-cours</div>
                    </div>
                </div>

            </div>
            </div>
        </div>
    </div>
</div>
</body>
</html>
