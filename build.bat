rem ---------------------------------------------
rem --- Build Graphite-enabled Mongolian font ---
rem ---------------------------------------------

set GrCompiler="C:\Apps\graphite\Graphite Compiler\GrCompiler.exe"
set Archiver="C:\Program Files\7-Zip\7z.exe"

rmdir /s /q ManchuGraphiteFont
mkdir ManchuGraphiteFont

copy README ManchuGraphiteFont
copy LICENSE ManchuGraphiteFont
copy ChangeLog ManchuGraphiteFont

%GrCompiler% DC_White.ttf manchu.gdl ManchuGraphiteFont\mncwhiteg.ttf "Manchu White G"
%GrCompiler% DC_Xiaokai.ttf manchu.gdl ManchuGraphiteFont\mncxiaokaig.ttf "Manchu Xiaokai G"
%GrCompiler% DC_Bible.ttf manchu.gdl ManchuGraphiteFont\mncbibleg.ttf "Manchu Bible G"
%GrCompiler% DC_Harmony.ttf manchu.gdl ManchuGraphiteFont\mncharmonyg.ttf "Manchu Harmony G"
%GrCompiler% DC_Round.ttf manchu.gdl ManchuGraphiteFont\mncroundg.ttf "Manchu Round G"

%Archiver% a -mx=9 ManchuGraphiteFont.zip ManchuGraphiteFont
