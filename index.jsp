<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
	pageEncoding="ISO-8859-1"%>
<%@ page import="java.util.Date"%>
<%@ page import="java.text.SimpleDateFormat"%>
<%@ page import="java.util.Calendar"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="ISO-8859-1">
<title>Recurrence Pattern Predictor</title>
<link rel="stylesheet"
	href="https://fonts.googleapis.com/css?family=Open+Sans:400,600,700" />
<link rel="stylesheet"
	href="https://fonts.googleapis.com/css2?family=EB+Garamond:wght@600&display=swap" />
<link rel="stylesheet" href="app.css" />
<style>
button {
	padding: 5px;
	width: 80px;
	background: #2196F3;
	color: white;
	font-size: 17px;
	border: 1px solid grey;
	border-left: none; /* Prevent double borders */
	cursor: pointer;
	margin-left: 240px;
	margin-bottom: 25px;
}

button:hover {
	background: #0b7dda;
}

.right {
	position: absolute;
	left: 600px;
	bottom: 390px;
	line-height: 1.7;
}

.left {
	line-height: 1.5;
}
</style>
</head>
<body>
	<div class="main">
		<h1>Recurrence Pattern Predictor</h1>
		<form action="index.jsp" method="post">
			<section>
				<p>Choose a date</p>
				<label for="sdate">Select a date :</label> <input type="date"
					id="sdate" name="sdate">
			</section>
			<section>
				<div class="left">
					<h2>Recurrence pattern</h2>
					<div class="input">
						  <input type="radio" id="daily" name="frequency" value="daily"
							onclick="onLoad1();">   <label for="daily">Daily</label>
					</div>
					<div class="input">
						  <input type="radio" id="weekly" name="frequency" value="weekly"
							onclick="onLoad2();">   <label for="weekly">Weekly</label>
					</div>
					<div class="input">
						  <input type="radio" id="monthly" name="frequency"
							value="monthly" onclick="onLoad3();">   <label
							for="monthly">Monthly</label><br>
					</div>
					<div class="input">
						  <input type="radio" id="yearly" name="frequency" value="yearly"
							onclick="onLoad4();" checked>   <label for="yearly">Yearly</label><br>
					</div>
					<br>
				</div>
				<div class="right">
					<div id="group1" class="hide">
						&nbsp;&nbsp;<input type="radio" id="every" name="every"
							value="every">   <label for="every">Every</label>&nbsp;&nbsp;&nbsp;&nbsp;
						<input type="text" id="days" name="days" maxlength="3" size="1">
						<label for="days">day(s)</label><br> &nbsp;&nbsp;<input
							type="radio" id="everyweekday" name="every" value="everyweekday">
						  <label for="everyweekday">Every weekday</label>
					</div>
					<div id="group2" class="hide">
						  <label for="recurevery">Recur every</label>&nbsp;&nbsp; <input
							type="text" id="recurevery" name="weeks" maxlength="3" size="1">&nbsp;&nbsp;
						<label for="recurevery">week(s) on:</label><br>
						&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;<input
							type="checkbox" id="1" name="day" value="1"> <label
							for="1">Sunday</label>&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;
						<input type="checkbox" id="2" name="day" value="2"> <label
							for="2">Monday</label>&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;
						<input type="checkbox" id="3" name="day" value="3"> <label
							for="3">Tuesday</label>&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;
						<input type="checkbox" id="4" name="day" value="4"> <label
							for="4">Wednesday</label><br>
						&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;<input
							type="checkbox" id="5" name="day" value="5"> <label
							for="5">Thursday</label>&nbsp;&nbsp;&nbsp;&nbsp;&nbsp; <input
							type="checkbox" id="6" name="day" value="6"> <label
							for="6">Friday</label>&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;
						<input type="checkbox" id="7" name="day" value="7"> <label
							for="7">Saturday</label><br>
					</div>
					<div id="group3" class="hide">
						&nbsp;&nbsp;<input type="radio" id="day" name="month" value="day"
							checked="checked">   <label for="day">Day</label>&nbsp;&nbsp;&nbsp;
						<input type="text" name="numday" maxlength="3" size="1">&nbsp;&nbsp;
						<label for="months">of every</label>&nbsp;&nbsp;<input type="text"
							id="months" name="months" maxlength="3" size="1">&nbsp;&nbsp;
						<label for="months">month(s)</label><br> &nbsp;&nbsp;<input
							type="radio" id="the" name="month" value="the">&nbsp;&nbsp;&nbsp;<label
							for="the">The</label>&nbsp;&nbsp;&nbsp; <input list="daysinweek"
							name="daysinweek" size="5">
						<datalist id="daysinweek">
							<option value="first">
							<option value="second">
							<option value="third">
							<option value="fourth">
							<option value="last">
						</datalist>
						&nbsp; <select name="daysofweek">
							<option value="1">Sunday</option>
							<option value="2">Monday</option>
							<option value="3">Tuesday</option>
							<option value="4">Wednesday</option>
							<option value="5">Thursday</option>
							<option value="6">Friday</option>
							<option value="7">Saturday</option>
						</select> &nbsp;&nbsp; <label for="months">of every</label>&nbsp;&nbsp;<input
							type="text" id="months" name="monthss" maxlength="3" size="1">&nbsp;&nbsp;
						<label for="months">month(s)</label><br> &nbsp;&nbsp;
					</div>
					<div id="group4" class="hide">
						&nbsp;&nbsp;<label for="recurevery">Recur every</label>&nbsp;&nbsp;
						<input type="text" id="recurevery" name="years" maxlength="3"
							size="1">&nbsp;&nbsp; <label for="recurevery">years(s)</label><br>
						&nbsp;&nbsp;<input type="radio" id="on" name="on" value="on"
							checked="checked">   <label for="on">On:</label>&nbsp;&nbsp;&nbsp;
						&nbsp;<select  name="monthsinyear">
							<option value="0">January</option>
							<option value="1">February</option>
							<option value="2">March</option>
							<option value="3">April</option>
							<option value="4">May</option>
							<option value="5">June</option>
							<option value="6">July</option>
							<option value="7">August</option>
							<option value="8">September</option>
							<option value="9">October</option>
							<option value="10">November</option>
							<option value="11">December</option>
						</select>
						&nbsp;&nbsp; <input type="text" name="dayofmonth" maxlength="3"
							size="1"> <br>&nbsp; <input type="radio" id="onthe"
							name="on" value="onthe">   <label for="onthe">On
							the:</label>&nbsp;&nbsp;&nbsp; <input list="daysinweek" name="daysweek"
							size="5">
						<datalist id="daysinweek">
							<option value="first">
							<option value="second">
							<option value="third">
							<option value="fourth">
							<option value="last">
						</datalist>
						&nbsp;  <select name="daysoweek">
							<option value="1">Sunday</option>
							<option value="2">Monday</option>
							<option value="3">Tuesday</option>
							<option value="4">Wednesday</option>
							<option value="5">Thursday</option>
							<option value="6">Friday</option>
							<option value="7">Saturday</option>
						</select>
						&nbsp; <label for="monthsinyear">of</label>&nbsp; &nbsp;<select  id="monthsinyear" name="monthsiyear">
							<option value="0">January</option>
							<option value="1">February</option>
							<option value="2">March</option>
							<option value="3">April</option>
							<option value="4">May</option>
							<option value="5">June</option>
							<option value="6">July</option>
							<option value="7">August</option>
							<option value="8">September</option>
							<option value="9">October</option>
							<option value="10">November</option>
							<option value="11">December</option>
						</select>
					</div>
				</div>
				<br>
				<button id="button" type="submit" name="save">SUBMIT</button>
			</section>
		</form>
		<%
		String output = "";
		String startDate;
		startDate = request.getParameter("sdate");
		SimpleDateFormat sdf = new SimpleDateFormat("yyyy-MM-dd");
		Calendar cal = Calendar.getInstance();
		try {
			cal.setTime(sdf.parse(startDate));
		} catch (Exception e) {
			e.printStackTrace();
		}
		try {
			String frequency;
			frequency = request.getParameter("frequency");
			if (frequency.equals("daily")) {
				String every;
				every = request.getParameter("every");
				if (every.equals("every")) {
			String days;
			days = request.getParameter("days");
			cal.add(Calendar.DAY_OF_MONTH, Integer.valueOf(days));
			output = sdf.format(cal.getTime());
				} else if (every.equals("everyweekday")) {
			int day = cal.get(Calendar.DAY_OF_WEEK);
			if (day == 6) {
				cal.add(Calendar.DAY_OF_MONTH, 3);
				output = sdf.format(cal.getTime());
			} else if (day == 7) {
				cal.add(Calendar.DAY_OF_MONTH, 2);
				output = sdf.format(cal.getTime());
			} else {
				cal.add(Calendar.DAY_OF_MONTH, 1);
				output = sdf.format(cal.getTime());
			}
				}
			} else if (frequency.equals("weekly")) {
				int size = 0;
				int count = 0;
				int day = cal.get(Calendar.DAY_OF_WEEK);
				String weeks;
				weeks = request.getParameter("weeks");
				int week = Integer.valueOf(weeks);
				String dayy;
				dayy = request.getParameter("day");
				if (Integer.valueOf(dayy) > day) {
			cal.add(Calendar.DAY_OF_MONTH, Integer.valueOf(dayy) - day);
			output = sdf.format(cal.getTime());
				} else if (Integer.valueOf(dayy) <= day) {
			cal.add(Calendar.DAY_OF_MONTH, (week * 7) + (Integer.valueOf(dayy) - day));
			output = sdf.format(cal.getTime());
				}
			} else if (frequency.equals("monthly")) {
				String opt = request.getParameter("month");
				if (opt.equals("day")) {
			String day = request.getParameter("numday");
			String months = request.getParameter("months");
			int stday = cal.get(Calendar.DAY_OF_MONTH);
			if (Integer.valueOf(day) > stday) {
				cal.add(Calendar.DAY_OF_MONTH, Integer.valueOf(day) - stday);
				output = sdf.format(cal.getTime());
			} else if (Integer.valueOf(day) <= stday) {
				cal.add(Calendar.MONTH, Integer.valueOf(months));
				cal.add(Calendar.DAY_OF_MONTH, Integer.valueOf(day) - stday);
				output = sdf.format(cal.getTime());
			}
				} else if (opt.equals("the")) {
			String dayInWeek = request.getParameter("daysinweek");
			String dayOfWeek = request.getParameter("daysofweek");
			String months = request.getParameter("monthss");
			int day = Integer.valueOf(dayOfWeek);
			int month = Integer.valueOf(months);
			int stmonth = cal.get(Calendar.MONTH);
			int styear = cal.get(Calendar.YEAR);
			Calendar cal2 = Calendar.getInstance();
			cal2.set(styear, stmonth, 1);
			int dayy = cal2.get(Calendar.DAY_OF_WEEK);
			if (day >= dayy) {
				cal2.add(Calendar.DAY_OF_MONTH, day - dayy);
			} else if (day < dayy) {
				cal2.add(Calendar.DAY_OF_MONTH, 7 + (day - dayy));
			}
			if (dayInWeek.equals("first")) {
				int stday = cal.get(Calendar.DAY_OF_MONTH);
				int currday = cal2.get(Calendar.DAY_OF_MONTH);
				if (currday > stday) {
					output = sdf.format(cal2.getTime());
				} else if (currday <= stday) {
					cal2.add(Calendar.MONTH, month);
					int curmonth = cal2.get(Calendar.MONTH);
					int curyear = cal2.get(Calendar.YEAR);
					cal2.set(curyear, curmonth, 1);
					int dow = cal2.get(Calendar.DAY_OF_WEEK);
					if (day >= dow) {
						cal2.add(Calendar.DAY_OF_MONTH, day - dow);
					} else if (day < dow) {
						cal2.add(Calendar.DAY_OF_MONTH, 7 + (day - dow));
					}
					output = sdf.format(cal2.getTime());
				}
			} else if (dayInWeek.equals("second")) {
				cal2.add(Calendar.DAY_OF_MONTH, 7);
				int stday = cal.get(Calendar.DAY_OF_MONTH);
				int currday = cal2.get(Calendar.DAY_OF_MONTH);
				if (currday > stday) {
					output = sdf.format(cal2.getTime());
				} else if (currday <= stday) {
					cal2.add(Calendar.MONTH, month);
					int curmonth = cal2.get(Calendar.MONTH);
					int curyear = cal2.get(Calendar.YEAR);
					cal2.set(curyear, curmonth, 1);
					int dow = cal2.get(Calendar.DAY_OF_WEEK);
					if (day >= dow) {
						cal2.add(Calendar.DAY_OF_MONTH, day - dow);
					} else if (day < dow) {
						cal2.add(Calendar.DAY_OF_MONTH, 7 + (day - dow));
					}
					cal2.add(Calendar.DAY_OF_MONTH, 7);
					output = sdf.format(cal2.getTime());
				}
			} else if (dayInWeek.equals("third")) {
				cal2.add(Calendar.DAY_OF_MONTH, 14);
				int stday = cal.get(Calendar.DAY_OF_MONTH);
				int currday = cal2.get(Calendar.DAY_OF_MONTH);
				if (currday > stday) {
					output = sdf.format(cal2.getTime());
				} else if (currday <= stday) {
					cal2.add(Calendar.MONTH, month);
					int curmonth = cal2.get(Calendar.MONTH);
					int curyear = cal2.get(Calendar.YEAR);
					cal2.set(curyear, curmonth, 1);
					int dow = cal2.get(Calendar.DAY_OF_WEEK);
					if (day >= dow) {
						cal2.add(Calendar.DAY_OF_MONTH, day - dow);
					} else if (day < dow) {
						cal2.add(Calendar.DAY_OF_MONTH, 7 + (day - dow));
					}
					cal2.add(Calendar.DAY_OF_MONTH, 14);
					output = sdf.format(cal2.getTime());
				}
			} else if (dayInWeek.equals("fourth")) {
				cal2.add(Calendar.DAY_OF_MONTH, 21);
				int stday = cal.get(Calendar.DAY_OF_MONTH);
				int currday = cal2.get(Calendar.DAY_OF_MONTH);
				if (currday > stday) {
					output = sdf.format(cal2.getTime());
				} else if (currday <= stday) {
					cal2.add(Calendar.MONTH, month);
					int curmonth = cal2.get(Calendar.MONTH);
					int curyear = cal2.get(Calendar.YEAR);
					cal2.set(curyear, curmonth, 1);
					int dow = cal2.get(Calendar.DAY_OF_WEEK);
					if (day >= dow) {
						cal2.add(Calendar.DAY_OF_MONTH, day - dow);
					} else if (day < dow) {
						cal2.add(Calendar.DAY_OF_MONTH, 7 + (day - dow));
					}
					cal2.add(Calendar.DAY_OF_MONTH, 21);
					output = sdf.format(cal2.getTime());
				}
			} else if (dayInWeek.equals("last")) {
				cal2.add(Calendar.DAY_OF_MONTH, 28);
				int currmonth = cal2.get(Calendar.MONTH);
				if (currmonth == stmonth) {
					int stday = cal.get(Calendar.DAY_OF_MONTH);
					int currday = cal2.get(Calendar.DAY_OF_MONTH);
					if (currday > stday) {
						output = sdf.format(cal2.getTime());
					} else if (currday <= stday) {
						cal2.add(Calendar.MONTH, month);
						int curmonth = cal2.get(Calendar.MONTH);
						int curyear = cal2.get(Calendar.YEAR);
						cal2.set(curyear, curmonth, 1);
						int dow = cal2.get(Calendar.DAY_OF_WEEK);
						if (day >= dow) {
							cal2.add(Calendar.DAY_OF_MONTH, day - dow);
						} else if (day < dow) {
							cal2.add(Calendar.DAY_OF_MONTH, 7 + (day - dow));
						}
						int mth = cal2.get(Calendar.MONTH);
						cal2.add(Calendar.DAY_OF_MONTH, 28);
						int mnth = cal2.get(Calendar.MONTH);
						if (mnth == mth) {
							output = sdf.format(cal2.getTime());
						} else{
							cal2.add(Calendar.DAY_OF_MONTH, -7);
							output = sdf.format(cal2.getTime());
						}
					}
				} else {
					cal2.add(Calendar.DAY_OF_MONTH, -7);
					int stday = cal.get(Calendar.DAY_OF_MONTH);
					int currday = cal2.get(Calendar.DAY_OF_MONTH);
					if (currday > stday) {
						output = sdf.format(cal2.getTime());
					} else if (currday <= stday) {
						cal2.add(Calendar.MONTH, month);
						int curmonth = cal2.get(Calendar.MONTH);
						int curyear = cal2.get(Calendar.YEAR);
						cal2.set(curyear, curmonth, 1);
						int dow = cal2.get(Calendar.DAY_OF_WEEK);
						if (day >= dow) {
							cal2.add(Calendar.DAY_OF_MONTH, day - dow);
						} else if (day < dow) {
							cal2.add(Calendar.DAY_OF_MONTH, 7 + (day - dow));
						}
						int mth = cal2.get(Calendar.MONTH);
						cal2.add(Calendar.DAY_OF_MONTH, 28);
						int mnth = cal2.get(Calendar.MONTH);
						if (mnth == mth) {
							output = sdf.format(cal2.getTime());
						} else{
							cal2.add(Calendar.DAY_OF_MONTH, -7);
							output = sdf.format(cal2.getTime());
						}
					}
				}
			}
				}
			}
			else if (frequency.equals("yearly")) {
				String years = request.getParameter("years");
				int year = Integer.valueOf(years);
				String optn = request.getParameter("on");
				if(optn.equals("on")){
					String mnths = request.getParameter("monthsinyear");
					String dys = request.getParameter("dayofmonth");
					int month = Integer.valueOf(mnths);
					int day = Integer.valueOf(dys);
					int stday = cal.get(Calendar.DAY_OF_MONTH);
					int stmonth = cal.get(Calendar.MONTH);
					int styear = cal.get(Calendar.YEAR);
					Calendar cal3 = Calendar.getInstance();
					if(month>stmonth || (month==stmonth && day>stday)){
						cal3.set(styear, month, day);
						output = sdf.format(cal3.getTime());
					}
					else if(month<stmonth || (month==stmonth && day<=stday)){
						cal3.set(styear+year, month, day);
						output = sdf.format(cal3.getTime());
					}
				}
				else if(optn.equals("onthe")){
					String daysofweek = request.getParameter("daysweek");
					String days = request.getParameter("daysoweek");
					String months = request.getParameter("monthsiyear");
					int month = Integer.valueOf(months);
					int day = Integer.valueOf(days);
					int stmonth = cal.get(Calendar.MONTH);
					int styear = cal.get(Calendar.YEAR);
					int stday = cal.get(Calendar.DAY_OF_MONTH);
					Calendar cal2 = Calendar.getInstance();
					cal2.set(styear, month, 1);
					int dayy = cal2.get(Calendar.DAY_OF_WEEK);
					if (day >= dayy) {
						cal2.add(Calendar.DAY_OF_MONTH, day - dayy);
					} else if (day < dayy) {
						cal2.add(Calendar.DAY_OF_MONTH, 7 + (day - dayy));
					}
					if (daysofweek.equals("second")) {
						cal2.add(Calendar.DAY_OF_MONTH, 7);
						}
					else if (daysofweek.equals("third")) {
						cal2.add(Calendar.DAY_OF_MONTH, 14);
						}
					else if (daysofweek.equals("fourth")) {
						cal2.add(Calendar.DAY_OF_MONTH, 21);
						}
					else if (daysofweek.equals("last")) {
						cal2.add(Calendar.DAY_OF_MONTH, 28);
						int currmonth = cal2.get(Calendar.MONTH);
						if (currmonth>month) {
							cal2.add(Calendar.DAY_OF_MONTH, -7);
						}
						}
					int currday = cal2.get(Calendar.DAY_OF_MONTH);
					if(month>stmonth || (month==stmonth && currday>stday)){
						output = sdf.format(cal2.getTime());
					}
					else if(month<stmonth || (month==stmonth && currday<=stday)){
						cal2.set(styear+year, month,1);
						int dayyy = cal2.get(Calendar.DAY_OF_WEEK);
						if (day >= dayyy) {
							cal2.add(Calendar.DAY_OF_MONTH, day - dayyy);
						} else if (day < dayyy) {
							cal2.add(Calendar.DAY_OF_MONTH, 7 + (day - dayyy));
						}
						if (daysofweek.equals("first")) {
							output = sdf.format(cal2.getTime());
							}

						else if (daysofweek.equals("second")) {
							cal2.add(Calendar.DAY_OF_MONTH, 7);
							output = sdf.format(cal2.getTime());
							}
						else if (daysofweek.equals("third")) {
							cal2.add(Calendar.DAY_OF_MONTH, 14);
							output = sdf.format(cal2.getTime());
							}
						else if (daysofweek.equals("fourth")) {
							cal2.add(Calendar.DAY_OF_MONTH, 21);
							output = sdf.format(cal2.getTime());
							}
						else if (daysofweek.equals("last")) {
							cal2.add(Calendar.DAY_OF_MONTH, 28);
							int currmonth = cal2.get(Calendar.MONTH);
							if (currmonth==month) {
								output = sdf.format(cal2.getTime());
							}
							else if (currmonth>month) {
								cal2.add(Calendar.DAY_OF_MONTH, -7);
								output = sdf.format(cal2.getTime());
							}
							}
					}

				}
			}

		} catch (Exception e) {
			e.printStackTrace();
		}
		%>
		<section>
			<label for="output">The next meeting date falls on:</label> <input
				type="text" id="output" value="<%=output%>" size="12"><br>
			<br>
		</section>
	</div>
	<script>
	    var group5 = document.getElementById("group4");
	    group5.classList.remove('hide');
		function onLoad1() {
			//method for button times
			var group1 = document.getElementById("group1");
			group1.classList.remove('hide');
			group1.classList.add('show');

			var group2 = document.getElementById("group2");
			group2.classList.remove('show');
			group2.classList.add('hide');

			var group3 = document.getElementById("group3");
			group3.classList.remove('show');
			group3.classList.add('hide');

			var group4 = document.getElementById("group4");
			group4.classList.remove('show');
			group4.classList.add('hide');

		}

		function onLoad2() {
			//method for button times
			var group2 = document.getElementById("group2");
			group2.classList.remove('hide');
			group2.classList.add('show');

			var group1 = document.getElementById("group1");
			group1.classList.remove('show');
			group1.classList.add('hide');

			var group3 = document.getElementById("group3");
			group3.classList.remove('show');
			group3.classList.add('hide');

			var group4 = document.getElementById("group4");
			group4.classList.remove('show');
			group4.classList.add('hide');

		}

		function onLoad3() {
			//method for button times
			var group3 = document.getElementById("group3");
			group3.classList.remove('hide');
			group3.classList.add('show');

			var group1 = document.getElementById("group1");
			group1.classList.remove('show');
			group1.classList.add('hide');

			var group2 = document.getElementById("group2");
			group2.classList.remove('show');
			group2.classList.add('hide');

			var group4 = document.getElementById("group4");
			group4.classList.remove('show');
			group4.classList.add('hide');

		}

		function onLoad4() {
			//method for button times
			var group4 = document.getElementById("group4");
			group4.classList.remove('hide');
			group4.classList.add('show');

			var group1 = document.getElementById("group1");
			group1.classList.remove('show');
			group1.classList.add('hide');

			var group2 = document.getElementById("group2");
			group2.classList.remove('show');
			group2.classList.add('hide');

			var group3 = document.getElementById("group3");
			group3.classList.remove('show');
			group3.classList.add('hide');

		}
	</script>
</body>
</html>