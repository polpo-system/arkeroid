MODULE ArkeroidTest;  (** ArkeroidTest.Run: the module loaded, its data and pictures found; needs the desktop's display *)

IMPORT Modules, Files, Images, Out;

VAR fails, checks: LONGINT;

PROCEDURE Check(what: ARRAY OF CHAR; ok: BOOLEAN);
BEGIN
  INC(checks);
  IF ~ok THEN INC(fails); Out.String("FAIL "); Out.String(what); Out.Ln END
END Check;

PROCEDURE Picture(name: ARRAY OF CHAR; w, h: INTEGER);
VAR img: Images.Image; done: BOOLEAN;
BEGIN
  NEW(img); Images.Load(img, name, done);
  Check(name, done & (img.width = w) & (img.height = h))
END Picture;

PROCEDURE Run*;
VAR f: Files.File;
BEGIN
  fails := 0; checks := 0;
  Check("Arkeroid", Modules.ThisMod("Arkeroid") # NIL);
  f := Files.Old("Arkeroid.Data"); Check("Arkeroid.Data", (f # NIL) & (Files.Length(f) = 23032));
  Picture("Arkdeskt.jpg", 800, 600); Picture("Arkp0060.bmp", 60, 20);
  Out.String("ArkeroidTest: "); Out.Int(checks, 0); Out.String(" checks, "); Out.Int(fails, 0); Out.String(" failed"); Out.Ln
END Run;

END ArkeroidTest.
