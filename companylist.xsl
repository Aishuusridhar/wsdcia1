<?xml version="1.0" encoding="UTF-8"?>
<xsl:stylesheet version="1.0" xmlns:xsl="http://www.w3.org/1999/XSL/Transform">
	<xsl:template match="/">
		

	<html>
	<head>
	<style>
	
	
	
	body {
	background: #252422;
	color: #52b788;
	font-size: 40px;
	margin-top: 50px;
	
	}
	
	
	table, th, td {
	width: 100%
	margin: auto;
	border: 1px solid white;
	border-collapse: collapse;
	text-align: center;
	font-size: 30px;
	table-layout: fixed;
	background: black;
	opacity: 0.8;
	color: white;
	margin-top: 50px;
	
}

th, td {
	padding: 20px;
	opacity: 1;
}

th {  
	color: #95d5b2;
}

	
	
	table.center {
	margin-left: auto;
	margin-right: auto;
	}
	
	
	


	</style>
	</head>	
		  <body>
		  <h2 align="center"> Employee Management System </h2>
		  <table class="center" border="1" align="center">
		  <tr bgcolor="black">
		  <th>ID</th>
		  <th>NAME</th>
		  <th>AGE</th>
		  <th>SALARY</th>
		  <th>EMAIL</th>
		  <th>MobNum</th>
		  <th>Designation</th>
		  <th>Promotion</th>
		  
		 </tr>
		 
		 <xsl:for-each select="company/employee">
		 
		 <tr>
		 <td><xsl:value-of select ="emp-id"/></td>
		 <td><xsl:value-of select ="emp-name"/></td>
		 <td><xsl:value-of select ="emp-age"/></td>
		 <td><xsl:value-of select ="emp-salary"/></td>
		 <td><xsl:value-of select ="emp-emailid"/></td>
		 <td><xsl:value-of select ="emp-phonenum"/></td>
		 <td><xsl:value-of select ="emp-designation"/></td>
		 <xsl:choose>
		 <xsl:when test="emp-age>=50">
		 <td>Associate Project Manager</td>
		
		  </xsl:when>
		  
		  <xsl:when test="emp-age>=40">
		 <td>Project Manager</td>
		 
		  </xsl:when>
		  
		  <xsl:when test="49>=emp-age">
		 <td>Team Leader</td>
		 
		  </xsl:when>
		  
		  <xsl:otherwise>
		 <td>Developer</td>
		 
		  </xsl:otherwise>
		  </xsl:choose>
		 
		 </tr>
		 </xsl:for-each>
		 </table>
		 </body>
		 </html>
		
		
		
		
	</xsl:template>
</xsl:stylesheet>