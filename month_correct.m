pdir = '/usr/local/texlive/texmf-local/bibtex/bib/local/';

fp = fopen([pdir 'library.bib'],'r');

fpw = fopen([pdir 'library_corr.bib'],'w');

ln = fgets(fp);

while ischar(ln)
    if regexp(ln,'\{jan\}')
        newln = regexprep(ln,'\{jan\}','jan');
    elseif regexp(ln,'\{feb\}')
        newln = regexprep(ln,'\{feb\}','feb');
    elseif regexp(ln,'\{mar\}')
        newln = regexprep(ln,'\{mar\}','mar');
    elseif regexp(ln,'\{apr\}')
        newln = regexprep(ln,'\{apr\}','apr');
    elseif regexp(ln,'\{may\}')
        newln = regexprep(ln,'\{may\}','may');
    elseif regexp(ln,'\{jun\}')
        newln = regexprep(ln,'\{jun\}','jun');
    elseif regexp(ln,'\{jul\}')
        newln = regexprep(ln,'\{jul\}','jul');
    elseif regexp(ln,'\{aug\}')
        newln = regexprep(ln,'\{aug\}','aug');
    elseif regexp(ln,'\{sep\}')
        newln = regexprep(ln,'\{sep\}','sep');
    elseif regexp(ln,'\{oct\}')
        newln = regexprep(ln,'\{oct\}','oct');
    elseif regexp(ln,'\{nov\}')
        newln = regexprep(ln,'\{nov\}','nov');
    elseif regexp(ln,'\{dec\}')
        newln = regexprep(ln,'\{dec\}','dec');
    else
        newln = ln;
    end
    fwrite(fpw,newln);
    ln = fgets(fp);
end

fclose(fp);
fclose(fpw);