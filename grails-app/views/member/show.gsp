
<%@ page import="churchcred.Member" %>
<!DOCTYPE html>
<html>
	<head>
		<meta name="layout" content="main">
		<g:set var="entityName" value="${message(code: 'member.label', default: 'Member')}" />
		<title><g:message code="default.show.label" args="[entityName]" /></title>
	</head>
	<body>
		<a href="#show-member" class="skip" tabindex="-1"><g:message code="default.link.skip.label" default="Skip to content&hellip;"/></a>
		<div class="nav" role="navigation">
			<ul>
				<li><a class="home" href="${createLink(uri: '/')}"><g:message code="default.home.label"/></a></li>
				<li><g:link class="list" action="index"><g:message code="default.list.label" args="[entityName]" /></g:link></li>
				<li><g:link class="create" action="create"><g:message code="default.new.label" args="[entityName]" /></g:link></li>
			</ul>
		</div>
		<div id="show-member" class="content scaffold-show" role="main">
			<h1><g:message code="default.show.label" args="[entityName]" /></h1>
			<g:if test="${flash.message}">
			<div class="message" role="status">${flash.message}</div>
			</g:if>
			<ol class="property-list member">
			
				<g:if test="${memberInstance?.firstName}">
				<li class="fieldcontain">
					<span id="firstName-label" class="property-label"><g:message code="member.firstName.label" default="First Name" /></span>
					
						<span class="property-value" aria-labelledby="firstName-label"><g:fieldValue bean="${memberInstance}" field="firstName"/></span>
					
				</li>
				</g:if>
			
				<g:if test="${memberInstance?.lastName}">
				<li class="fieldcontain">
					<span id="lastName-label" class="property-label"><g:message code="member.lastName.label" default="Last Name" /></span>
					
						<span class="property-value" aria-labelledby="lastName-label"><g:fieldValue bean="${memberInstance}" field="lastName"/></span>
					
				</li>
				</g:if>
			
				<g:if test="${memberInstance?.middleName}">
				<li class="fieldcontain">
					<span id="middleName-label" class="property-label"><g:message code="member.middleName.label" default="Middle Name" /></span>
					
						<span class="property-value" aria-labelledby="middleName-label"><g:fieldValue bean="${memberInstance}" field="middleName"/></span>
					
				</li>
				</g:if>
			
				<g:if test="${memberInstance?.username}">
				<li class="fieldcontain">
					<span id="username-label" class="property-label"><g:message code="member.username.label" default="Username" /></span>
					
						<span class="property-value" aria-labelledby="username-label"><g:fieldValue bean="${memberInstance}" field="username"/></span>
					
				</li>
				</g:if>
			
				<g:if test="${memberInstance?.memberPassword}">
				<li class="fieldcontain">
					<span id="memberPassword-label" class="property-label"><g:message code="member.memberPassword.label" default="Member Password" /></span>
					
						<span class="property-value" aria-labelledby="memberPassword-label"><g:fieldValue bean="${memberInstance}" field="memberPassword"/></span>
					
				</li>
				</g:if>
			
				<g:if test="${memberInstance?.memberEmail}">
				<li class="fieldcontain">
					<span id="memberEmail-label" class="property-label"><g:message code="member.memberEmail.label" default="Member Email" /></span>
					
						<span class="property-value" aria-labelledby="memberEmail-label"><g:fieldValue bean="${memberInstance}" field="memberEmail"/></span>
					
				</li>
				</g:if>
			
				<g:if test="${memberInstance?.cellPhoneNumber}">
				<li class="fieldcontain">
					<span id="cellPhoneNumber-label" class="property-label"><g:message code="member.cellPhoneNumber.label" default="Cell Phone Number" /></span>
					
						<span class="property-value" aria-labelledby="cellPhoneNumber-label"><g:fieldValue bean="${memberInstance}" field="cellPhoneNumber"/></span>
					
				</li>
				</g:if>
			
				<g:if test="${memberInstance?.otherPhoneNumber}">
				<li class="fieldcontain">
					<span id="otherPhoneNumber-label" class="property-label"><g:message code="member.otherPhoneNumber.label" default="Other Phone Number" /></span>
					
						<span class="property-value" aria-labelledby="otherPhoneNumber-label"><g:fieldValue bean="${memberInstance}" field="otherPhoneNumber"/></span>
					
				</li>
				</g:if>
			
				<g:if test="${memberInstance?.backgroundCheckPerfomed}">
				<li class="fieldcontain">
					<span id="backgroundCheckPerfomed-label" class="property-label"><g:message code="member.backgroundCheckPerfomed.label" default="Background Check Perfomed" /></span>
					
						<span class="property-value" aria-labelledby="backgroundCheckPerfomed-label"><g:formatBoolean boolean="${memberInstance?.backgroundCheckPerfomed}" /></span>
					
				</li>
				</g:if>
			
				<g:if test="${memberInstance?.sexualHarrasmentCompleted}">
				<li class="fieldcontain">
					<span id="sexualHarrasmentCompleted-label" class="property-label"><g:message code="member.sexualHarrasmentCompleted.label" default="Sexual Harrasment Completed" /></span>
					
						<span class="property-value" aria-labelledby="sexualHarrasmentCompleted-label"><g:formatDate date="${memberInstance?.sexualHarrasmentCompleted}" /></span>
					
				</li>
				</g:if>
			
				<g:if test="${memberInstance?.title}">
				<li class="fieldcontain">
					<span id="title-label" class="property-label"><g:message code="member.title.label" default="Title" /></span>
					
						<span class="property-value" aria-labelledby="title-label"><g:fieldValue bean="${memberInstance}" field="title"/></span>
					
				</li>
				</g:if>
			
				<g:if test="${memberInstance?.suffix}">
				<li class="fieldcontain">
					<span id="suffix-label" class="property-label"><g:message code="member.suffix.label" default="Suffix" /></span>
					
						<span class="property-value" aria-labelledby="suffix-label"><g:fieldValue bean="${memberInstance}" field="suffix"/></span>
					
				</li>
				</g:if>
			
			</ol>
			<g:form url="[resource:memberInstance, action:'delete']" method="DELETE">
				<fieldset class="buttons">
					<g:link class="edit" action="edit" resource="${memberInstance}"><g:message code="default.button.edit.label" default="Edit" /></g:link>
					<g:actionSubmit class="delete" action="delete" value="${message(code: 'default.button.delete.label', default: 'Delete')}" onclick="return confirm('${message(code: 'default.button.delete.confirm.message', default: 'Are you sure?')}');" />
				</fieldset>
			</g:form>
		</div>
	</body>
</html>
