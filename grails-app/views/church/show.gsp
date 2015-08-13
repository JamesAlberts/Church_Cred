
<%@ page import="churchcred.Church" %>
<!DOCTYPE html>
<html>
	<head>
		<meta name="layout" content="main">
		<g:set var="entityName" value="${message(code: 'church.label', default: 'Church')}" />
		<title><g:message code="default.show.label" args="[entityName]" /></title>
	</head>
	<body>
		<a href="#show-church" class="skip" tabindex="-1"><g:message code="default.link.skip.label" default="Skip to content&hellip;"/></a>
		<div class="nav" role="navigation">
			<ul>
				<li><a class="home" href="${createLink(uri: '/')}"><g:message code="default.home.label"/></a></li>
				<li><g:link class="list" action="index"><g:message code="default.list.label" args="[entityName]" /></g:link></li>
				<li><g:link class="create" action="create"><g:message code="default.new.label" args="[entityName]" /></g:link></li>
			</ul>
		</div>
		<div id="show-church" class="content scaffold-show" role="main">
			<h1><g:message code="default.show.label" args="[entityName]" /></h1>
			<g:if test="${flash.message}">
			<div class="message" role="status">${flash.message}</div>
			</g:if>
			<ol class="property-list church">
			
				<g:if test="${churchInstance?.churchName}">
				<li class="fieldcontain">
					<span id="churchName-label" class="property-label"><g:message code="church.churchName.label" default="Church Name" /></span>
					
						<span class="property-value" aria-labelledby="churchName-label"><g:fieldValue bean="${churchInstance}" field="churchName"/></span>
					
				</li>
				</g:if>
			
				<g:if test="${churchInstance?.streetAddress}">
				<li class="fieldcontain">
					<span id="streetAddress-label" class="property-label"><g:message code="church.streetAddress.label" default="Street Address" /></span>
					
						<span class="property-value" aria-labelledby="streetAddress-label"><g:fieldValue bean="${churchInstance}" field="streetAddress"/></span>
					
				</li>
				</g:if>
			
				<g:if test="${churchInstance?.city}">
				<li class="fieldcontain">
					<span id="city-label" class="property-label"><g:message code="church.city.label" default="City" /></span>
					
						<span class="property-value" aria-labelledby="city-label"><g:fieldValue bean="${churchInstance}" field="city"/></span>
					
				</li>
				</g:if>
			
				<g:if test="${churchInstance?.state}">
				<li class="fieldcontain">
					<span id="state-label" class="property-label"><g:message code="church.state.label" default="State" /></span>
					
						<span class="property-value" aria-labelledby="state-label"><g:fieldValue bean="${churchInstance}" field="state"/></span>
					
				</li>
				</g:if>
			
				<g:if test="${churchInstance?.pastor}">
				<li class="fieldcontain">
					<span id="pastor-label" class="property-label"><g:message code="church.pastor.label" default="Pastor" /></span>
					
						<span class="property-value" aria-labelledby="pastor-label"><g:link controller="member" action="show" id="${churchInstance?.pastor?.id}">${churchInstance?.pastor?.encodeAsHTML()}</g:link></span>
					
				</li>
				</g:if>
			
				<g:if test="${churchInstance?.webAddress}">
				<li class="fieldcontain">
					<span id="webAddress-label" class="property-label"><g:message code="church.webAddress.label" default="Web Address" /></span>
					
						<span class="property-value" aria-labelledby="webAddress-label"><g:fieldValue bean="${churchInstance}" field="webAddress"/></span>
					
				</li>
				</g:if>
			
				<g:if test="${churchInstance?.churchEmail}">
				<li class="fieldcontain">
					<span id="churchEmail-label" class="property-label"><g:message code="church.churchEmail.label" default="Church Email" /></span>
					
						<span class="property-value" aria-labelledby="churchEmail-label"><g:fieldValue bean="${churchInstance}" field="churchEmail"/></span>
					
				</li>
				</g:if>
			
				<g:if test="${churchInstance?.phoneNumber}">
				<li class="fieldcontain">
					<span id="phoneNumber-label" class="property-label"><g:message code="church.phoneNumber.label" default="Phone Number" /></span>
					
						<span class="property-value" aria-labelledby="phoneNumber-label"><g:fieldValue bean="${churchInstance}" field="phoneNumber"/></span>
					
				</li>
				</g:if>
			
				<g:if test="${churchInstance?.dateOfLastSuptVisit}">
				<li class="fieldcontain">
					<span id="dateOfLastSuptVisit-label" class="property-label"><g:message code="church.dateOfLastSuptVisit.label" default="Date Of Last Supt Visit" /></span>
					
						<span class="property-value" aria-labelledby="dateOfLastSuptVisit-label"><g:formatDate date="${churchInstance?.dateOfLastSuptVisit}" /></span>
					
				</li>
				</g:if>
			
				<g:if test="${churchInstance?.is501c3}">
				<li class="fieldcontain">
					<span id="is501c3-label" class="property-label"><g:message code="church.is501c3.label" default="Is501c3" /></span>
					
						<span class="property-value" aria-labelledby="is501c3-label"><g:formatBoolean boolean="${churchInstance?.is501c3}" /></span>
					
				</li>
				</g:if>
			
				<g:if test="${churchInstance?.description}">
				<li class="fieldcontain">
					<span id="description-label" class="property-label"><g:message code="church.description.label" default="Description" /></span>
					
						<span class="property-value" aria-labelledby="description-label"><g:fieldValue bean="${churchInstance}" field="description"/></span>
					
				</li>
				</g:if>
			
				<g:if test="${churchInstance?.members}">
				<li class="fieldcontain">
					<span id="members-label" class="property-label"><g:message code="church.members.label" default="Members" /></span>
					
						<g:each in="${churchInstance.members}" var="m">
						<span class="property-value" aria-labelledby="members-label"><g:link controller="member" action="show" id="${m.id}">${m?.encodeAsHTML()}</g:link></span>
						</g:each>
					
				</li>
				</g:if>
			
				<g:if test="${churchInstance?.zipCode}">
				<li class="fieldcontain">
					<span id="zipCode-label" class="property-label"><g:message code="church.zipCode.label" default="Zip Code" /></span>
					
						<span class="property-value" aria-labelledby="zipCode-label"><g:fieldValue bean="${churchInstance}" field="zipCode"/></span>
					
				</li>
				</g:if>
			
			</ol>
			<g:form url="[resource:churchInstance, action:'delete']" method="DELETE">
				<fieldset class="buttons">
					<g:link class="edit" action="edit" resource="${churchInstance}"><g:message code="default.button.edit.label" default="Edit" /></g:link>
					<g:actionSubmit class="delete" action="delete" value="${message(code: 'default.button.delete.label', default: 'Delete')}" onclick="return confirm('${message(code: 'default.button.delete.confirm.message', default: 'Are you sure?')}');" />
				</fieldset>
			</g:form>
		</div>
	</body>
</html>
