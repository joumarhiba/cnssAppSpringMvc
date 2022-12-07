<%--
  Created by IntelliJ IDEA.
  User: YC
  Date: 07/12/2022
  Time: 10:16
  To change this template use File | Settings | File Templates.
--%>
<%@ page contentType="text/html;charset=UTF-8" language="java" %>
<html>
<head>
    <title>
        add Document
    </title>
</head>
<body>
<form class="space-y-4" action="insertDocument" method="POST" modelAttribute="document">
    <input type="hidden" name="role" value="agent">
    <div class="rounded-md -space-y-px">
        <div class="grid gap-6">
            <div class="col-span-12">
                <label for="prix" class="block text-sm font-medium text-gray-700">Prix de la Consultation</label>
                <input type="text" name="prix" id="prix" autocomplete=off class="mt-1 focus:outline-none focus:border block w-full shadow-sm sm:text-sm border-gray-300 rounded-md p-2">
            </div>

            <div class="col-span-12">
                <select name="title" class=" focus:outline-none focus:ring-2 pl-2 outline-none border-none">
                    <option >Doctor Title</option>
                    <option value="generaliste">Generaliste</option>
                    <option value="specialiste">Specialiste</option>
                </select>
            </div>
             <div class="col-span-12">
               <select name="type" class=" focus:outline-none focus:ring-2 pl-2 outline-none border-none">
                 <option >Type du document</option>
                 <option value="analyse">Analyse</option>
                 <option value="scanner">Scanner</option>
               </select>
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
</body>
</html>
