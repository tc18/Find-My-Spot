<%@taglib prefix="c" uri="http://java.sun.com/jstl/core_rt"%>
<%@taglib prefix="function" uri="http://java.sun.com/jsp/jstl/functions"%>
<c:set var="list" value="${sessionScope.listParking }"></c:set>
<c:set var="len" value="${function:length(list) }"></c:set>
[<c:forEach items="${sessionScope.listParking }" var="i" varStatus="j">
		{"parkingName":"${i.name }","EmptySpot":"${i.id }"}<c:if test="${len ne j.count }">,</c:if>
</c:forEach>]