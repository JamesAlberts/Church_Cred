<%@ page import="churchcred.Church" %>



<div class="fieldcontain ${hasErrors(bean: churchInstance, field: 'churchName', 'error')} required">
	<label for="churchName">
		<g:message code="church.churchName.label" default="Church Name" />
		<span class="required-indicator">*</span>
	</label>
	<g:textField name="churchName" maxlength="40" required="" value="${churchInstance?.churchName}"/>

</div>

<div class="fieldcontain ${hasErrors(bean: churchInstance, field: 'streetAddress', 'error')} required">
	<label for="streetAddress">
		<g:message code="church.streetAddress.label" default="Street Address" />
		<span class="required-indicator">*</span>
	</label>
	<g:textField name="streetAddress" maxlength="50" required="" value="${churchInstance?.streetAddress}"/>

</div>

<div class="fieldcontain ${hasErrors(bean: churchInstance, field: 'city', 'error')} required">
	<label for="city">
		<g:message code="church.city.label" default="City" />
		<span class="required-indicator">*</span>
	</label>
	<g:textField name="city" maxlength="20" required="" value="${churchInstance?.city}"/>

</div>

<div class="fieldcontain ${hasErrors(bean: churchInstance, field: 'state', 'error')} required">
	<label for="state">
		<g:message code="church.state.label" default="State" />
		<span class="required-indicator">*</span>
	</label>
	<g:textField name="state" maxlength="2" required="" value="${churchInstance?.state}"/>

</div>

<div class="fieldcontain ${hasErrors(bean: churchInstance, field: 'pastor', 'error')} ">
	<label for="pastor">
		<g:message code="church.pastor.label" default="Pastor" />
		
	</label>
	<g:select id="pastor" name="pastor.id" from="${churchcred.Member.list()}" optionKey="id" value="${churchInstance?.pastor?.id}" class="many-to-one" noSelection="['null': '']"/>

</div>

<div class="fieldcontain ${hasErrors(bean: churchInstance, field: 'webAddress', 'error')} required">
	<label for="webAddress">
		<g:message code="church.webAddress.label" default="Web Address" />
		<span class="required-indicator">*</span>
	</label>
	<g:field type="url" name="webAddress" required="" value="${churchInstance?.webAddress}"/>

</div>

<div class="fieldcontain ${hasErrors(bean: churchInstance, field: 'churchEmail', 'error')} required">
	<label for="churchEmail">
		<g:message code="church.churchEmail.label" default="Church Email" />
		<span class="required-indicator">*</span>
	</label>
	<g:field type="email" name="churchEmail" required="" value="${churchInstance?.churchEmail}"/>

</div>

<div class="fieldcontain ${hasErrors(bean: churchInstance, field: 'phoneNumber', 'error')} required">
	<label for="phoneNumber">
		<g:message code="church.phoneNumber.label" default="Phone Number" />
		<span class="required-indicator">*</span>
	</label>
	<g:textField name="phoneNumber" required="" value="${churchInstance?.phoneNumber}"/>

</div>

<div class="fieldcontain ${hasErrors(bean: churchInstance, field: 'dateOfLastSuptVisit', 'error')} ">
	<label for="dateOfLastSuptVisit">
		<g:message code="church.dateOfLastSuptVisit.label" default="Date Of Last Supt Visit" />
		
	</label>
	<g:datePicker name="dateOfLastSuptVisit" precision="day"  value="${churchInstance?.dateOfLastSuptVisit}" default="none" noSelection="['': '']" />

</div>

<div class="fieldcontain ${hasErrors(bean: churchInstance, field: 'is501c3', 'error')} ">
	<label for="is501c3">
		<g:message code="church.is501c3.label" default="Is501c3" />
		
	</label>
	<g:checkBox name="is501c3" value="${churchInstance?.is501c3}" />

</div>

<div class="fieldcontain ${hasErrors(bean: churchInstance, field: 'description', 'error')} required">
	<label for="description">
		<g:message code="church.description.label" default="Description" />
		<span class="required-indicator">*</span>
	</label>
	<g:textArea name="description" cols="40" rows="5" maxlength="5000" required="" value="${churchInstance?.description}"/>

</div>

<div class="fieldcontain ${hasErrors(bean: churchInstance, field: 'members', 'error')} ">
	<label for="members">
		<g:message code="church.members.label" default="Members" />
		
	</label>
	<g:select name="members" from="${churchcred.Member.list()}" multiple="multiple" optionKey="id" size="5" value="${churchInstance?.members*.id}" class="many-to-many"/>

</div>

<div class="fieldcontain ${hasErrors(bean: churchInstance, field: 'zipCode', 'error')} required">
	<label for="zipCode">
		<g:message code="church.zipCode.label" default="Zip Code" />
		<span class="required-indicator">*</span>
	</label>
	<g:textField name="zipCode" required="" value="${churchInstance?.zipCode}"/>

</div>

