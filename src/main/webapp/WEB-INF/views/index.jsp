<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<%@taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>

<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">
<html>
<head>
<meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
<title>KeepNote</title>
</head>
<body>
    <!-- Create a form which will have text boxes for Note ID, title, content and status along with a Send
         button. Handle errors like empty fields -->
         <form action="saveNote" method="post" name="noteForm">
         Note Id: <input name="noteId" type="text"><br/>
         Note Title: <input name="noteTitle" type="text"><br/>
         Note Content: <input name="noteContent" type="text"><br/>
         Note Status: <input name="noteStatus" type="text"><br/>
         <input name="submitBtn" type="submit">
         </form>

    <!-- display all existing notes in a tabular structure with Id, Title,Content,Status, Created Date and Action -->
    <table>
    <tbody>
    <c:forEach var="note" items="${notes}" varStatus="status">
    <tr>

    <td>${note.noteId}</td><br>
    <td>${note.noteTitle}</td><br>
    <td>${note.noteContent}</td><br>
    <td>${note.noteStatus}</td><br>
    <td>${note.createdAt}</td>
    <td><form action="deleteNote" method="get"><input type="hidden" name="noteId" value="${note.noteId }"><input type="submit" value="Delete"></form>
    <!-- <a href="deleteNote/${note.noteId}">Delete</a> -->
    </td>

    </tr>

    </c:forEach>
    </tbody>
    </table>
</body>
</html>