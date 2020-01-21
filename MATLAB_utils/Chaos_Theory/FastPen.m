%ApEn
%By Abdolkarim Saeedi.
%All Rights Reserved.
%This Function Computes The Aprroximate Entropy of A given Signal.
% where m is the embedding dimension and r is the minimum distance for the similarity measure.
%
%

%{Inputs:                        data:1*N row vector.                        m:embedding dimension.(positive scalar)                       r:tolerance.(minimum distance)}
function ApEn=FastPen(data,m,r)
    %controlling parameters
    if nargin>3 || nargin<3
        fprintf('WARNING:3 Input Arguments Needed.\n Type help FastPen For More Info.\n')
    end
    if ~isvector(data)
        error('data must be a 1*N vector')
    end
    if m>length(data)
        error('embedding dimension must be smaller than data size')
    end
    for m=m:m+1
        N=length(data);
        x=zeros(N-m+1,m);
        c=zeros(N-m+1,1);
        d=zeros(N-m+1,1);
        %creating the m-dimensional matrix.
        for i=1:N-m+1
            x(i,1:m)=data(i:i+m-1);
        end
        %finding the number of matrix elements that have a smaller distance than r using chebyshev method.
        for k=1:N-m+1
d=abs(pdist(x(k,1:m),x(1:end,1:m)));
c(k)=sum((d<r),'all')/numel(c);
        end
        %finally phi is defined as:
        phi(m)=(sum(log(c)))/numel(c);
    end
    ApEn=phi(m-1)-phi(m);
end
