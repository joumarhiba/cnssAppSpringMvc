<%--
  Created by IntelliJ IDEA.
  User: YC
  Date: 06/12/2022
  Time: 14:08
  To change this template use File | Settings | File Templates.
--%>
<%@ page contentType="text/html;charset=UTF-8" language="java" %>
<html>
<head>
    <title>Add Folder</title>
    <link href="https://unpkg.com/tailwindcss@^2.0/dist/tailwind.min.css" rel="stylesheet" />
</head>
<body>
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
            <div class="flex flex-row w-screen p-4">
                <section class="bg-gray-100">
                    <div class="mx-auto max-w-screen-xl px-4 py-16 sm:px-6 lg:px-8">
                        <div class="grid grid-cols-1 gap-x-16 gap-y-8 lg:grid-cols-5">
                            <div class="lg:col-span-2 lg:py-12">
                                <p class="max-w-xl text-lg">
                                    At the same time, the fact that we are wholly owned and totally
                                    independent from manufacturer and other group control gives you
                                    confidence that we will only recommend what is right for you.
                                </p>

                                <div class="mt-8">
                                    <address class="mt-2 not-italic">
                                        282 Kevin Brook, Imogeneborough, CA 58517
                                    </address>
                                </div>
                            </div>

                            <div class="rounded-lg bg-white p-8 shadow-lg lg:col-span-3 lg:p-12">
                                <form class="space-y-4" action="insertDossier" method="POST" modelAttribute="dossier">
                                    <div class="grid grid-cols-2 gap-4 sm:grid-cols-2">
                                    <select name="owner" class="focus:outline-none focus:ring-2 pl-2 outline-none border-none my-4">
                                        <option >Choose The Owner</option>
                                        <option value="assurant">Assurant</option>
                                        <option value="conjoint">Conjoint</option>
                                        <option value="enfant">Enfant</option>
                                    </select>
                                    <div class="focus:outline-none focus:ring-2 pl-2 outline-none border-none my-4">

                                            <label class="sr-only" for="dateVisite">Date de Visite</label>
                                            <input name="date_Visite" class="w-full border-blue-900 rounded-sm p-3 text-sm" type="date" id="dateVisite" />
                                        <!--
                                        <select name="role" class=" focus:outline-none focus:ring-2 pl-2 outline-none border-none">
                                            <option >Choose The Owner</option>
                                            <option value="assurant">Assurant</option>
                                        </select> -->

                                    </div>
                                        <input type="hidden" name="status" value="en-cours">
                                        <input type="hidden" name="agent_id" value="3">
                                        <input type="hidden" name="patient_id" value="1">
                                    </div>

                                    <div class="mt-4">
                                        <button type="submit" class="inline-flex w-full items-center justify-center rounded-lg bg-black px-5 py-3 text-white sm:w-auto">
                                            <span class="font-medium"> Save Folder </span>

                                            <svg  xmlns="http://www.w3.org/2000/svg"
                                                    class="ml-3 h-5 w-5" fill="none" viewBox="0 0 24 24"
                                                    stroke="currentColor">
                                                <path stroke-linecap="round"
                                                        stroke-linejoin="round"
                                                        stroke-width="2" d="M14 5l7 7m0 0l-7 7m7-7H3"  />
                                            </svg>
                                        </button>
                                    </div>
                                </form>
                            </div>
                        </div>
                    </div>
                </section>

            </div>
        </div>
    </div>
</div>
</div>
</body>
</html>
