/* main.java

 This program is part of the Betsy project, it controls the start
 of Betsy's thought process

 Copyright (C) 2018  Scott C. MacCallum
 scm@linux.com

 This program is free software: you can redistribute it and/or
 modify it under the terms of the GNU Affero License as published
 by the Free Software Foundation, either version 3 of the License,
 or (at your option) any later version.

 This program is distributed in the hope that it will be useful,
 but WITHOUT ANY WARRANTY; without even the implied warranty of
 MERCHANTABILITY or FITNESS FOR A PARTICULAR PURPOSE.  See the
 GNU General Public License for more details.

 You should have received a copy of the GNU General Public License
 along with this program.  If not, see http://www.gnu.org/licenses/.
*/

import java.io.*;

class meet {
    public static void main(String[] args)
	throws IOException
    {
	BufferedReader br = new
	    BufferedReader(new InputStreamReader(System.in));

	String ai = "[ Betsy ] ";
	String human = "[ Unknown ] ";
	String answer;

	PrintWriter pw = new PrintWriter(System.out, true);

	pw.println(ai + "What is your name?");

	System.out.format(human);

	human = br.readLine();

	pw.println(ai + "Your name is, " + human + "?");

	System.out.format("[ ");
	System.out.format(human);
	System.out.format("? ] ");

	answer = br.readLine();

	if ("no".equals(answer)) {
	    System.out.format("Call meet function code goes here.");
	}

	if (!"yes".equals(answer)) {
	    System.out.format("Please answer me with a yes or no.");
    	    System.out.format("Call meet function code goes here.");
	}
    }
}