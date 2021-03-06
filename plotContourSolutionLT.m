function plotContourSolutionLT(nodes,elem,valueToShow,titol,...
    xLabel,yLabel,colorScale)
%
% plot color contour values for triangles and quadrilateral meshes
% (c)Numerical Factory
%
 numElem = size(elem,1);     
 numNodesElem = size(elem,2);
for ielem=1:numElem  
 for i=1:numNodesElem
     nd(i)=elem(ielem,i);         % extract nodes for i-th element
     X(i,ielem)=nodes(nd(i),1);    % extract x value of the node
     Y(i,ielem)=nodes(nd(i),2);    % extract y value of the node
 end   
 plotValues(:,ielem) = valueToShow(nd') ; %extract the value for each node 
end
figure()
colormap(colorScale)
 plot(X,Y,'k')
 fill(X,Y,plotValues)
 title(titol,'interpreter','LaTeX') ;         
 xlabel(xLabel,'interpreter','LaTeX');
 ylabel(yLabel,'interpreter','LaTeX','rot',360);
 axis equal;
 colorbar