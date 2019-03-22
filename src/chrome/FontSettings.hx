package chrome;

import chrome.Events;
import chrome.Types;

typedef FontName = {
	var fontId : String;
	var displayName : String;
}

@:enum abstract ScriptCode(String) from String to String {
	var Afak = "Afak";
	var Arab = "Arab";
	var Armi = "Armi";
	var Armn = "Armn";
	var Avst = "Avst";
	var Bali = "Bali";
	var Bamu = "Bamu";
	var Bass = "Bass";
	var Batk = "Batk";
	var Beng = "Beng";
	var Blis = "Blis";
	var Bopo = "Bopo";
	var Brah = "Brah";
	var Brai = "Brai";
	var Bugi = "Bugi";
	var Buhd = "Buhd";
	var Cakm = "Cakm";
	var Cans = "Cans";
	var Cari = "Cari";
	var Cham = "Cham";
	var Cher = "Cher";
	var Cirt = "Cirt";
	var Copt = "Copt";
	var Cprt = "Cprt";
	var Cyrl = "Cyrl";
	var Cyrs = "Cyrs";
	var Deva = "Deva";
	var Dsrt = "Dsrt";
	var Dupl = "Dupl";
	var Egyd = "Egyd";
	var Egyh = "Egyh";
	var Egyp = "Egyp";
	var Elba = "Elba";
	var Ethi = "Ethi";
	var Geor = "Geor";
	var Geok = "Geok";
	var Glag = "Glag";
	var Goth = "Goth";
	var Gran = "Gran";
	var Grek = "Grek";
	var Gujr = "Gujr";
	var Guru = "Guru";
	var Hang = "Hang";
	var Hani = "Hani";
	var Hano = "Hano";
	var Hans = "Hans";
	var Hant = "Hant";
	var Hebr = "Hebr";
	var Hluw = "Hluw";
	var Hmng = "Hmng";
	var Hung = "Hung";
	var Inds = "Inds";
	var Ital = "Ital";
	var Java = "Java";
	var Jpan = "Jpan";
	var Jurc = "Jurc";
	var Kali = "Kali";
	var Khar = "Khar";
	var Khmr = "Khmr";
	var Khoj = "Khoj";
	var Knda = "Knda";
	var Kpel = "Kpel";
	var Kthi = "Kthi";
	var Lana = "Lana";
	var Laoo = "Laoo";
	var Latf = "Latf";
	var Latg = "Latg";
	var Latn = "Latn";
	var Lepc = "Lepc";
	var Limb = "Limb";
	var Lina = "Lina";
	var Linb = "Linb";
	var Lisu = "Lisu";
	var Loma = "Loma";
	var Lyci = "Lyci";
	var Lydi = "Lydi";
	var Mand = "Mand";
	var Mani = "Mani";
	var Maya = "Maya";
	var Mend = "Mend";
	var Merc = "Merc";
	var Mero = "Mero";
	var Mlym = "Mlym";
	var Moon = "Moon";
	var Mong = "Mong";
	var Mroo = "Mroo";
	var Mtei = "Mtei";
	var Mymr = "Mymr";
	var Narb = "Narb";
	var Nbat = "Nbat";
	var Nkgb = "Nkgb";
	var Nkoo = "Nkoo";
	var Nshu = "Nshu";
	var Ogam = "Ogam";
	var Olck = "Olck";
	var Orkh = "Orkh";
	var Orya = "Orya";
	var Osma = "Osma";
	var Palm = "Palm";
	var Perm = "Perm";
	var Phag = "Phag";
	var Phli = "Phli";
	var Phlp = "Phlp";
	var Phlv = "Phlv";
	var Phnx = "Phnx";
	var Plrd = "Plrd";
	var Prti = "Prti";
	var Rjng = "Rjng";
	var Roro = "Roro";
	var Runr = "Runr";
	var Samr = "Samr";
	var Sara = "Sara";
	var Sarb = "Sarb";
	var Saur = "Saur";
	var Sgnw = "Sgnw";
	var Shaw = "Shaw";
	var Shrd = "Shrd";
	var Sind = "Sind";
	var Sinh = "Sinh";
	var Sora = "Sora";
	var Sund = "Sund";
	var Sylo = "Sylo";
	var Syrc = "Syrc";
	var Syre = "Syre";
	var Syrj = "Syrj";
	var Syrn = "Syrn";
	var Tagb = "Tagb";
	var Takr = "Takr";
	var Tale = "Tale";
	var Talu = "Talu";
	var Taml = "Taml";
	var Tang = "Tang";
	var Tavt = "Tavt";
	var Telu = "Telu";
	var Teng = "Teng";
	var Tfng = "Tfng";
	var Tglg = "Tglg";
	var Thaa = "Thaa";
	var Thai = "Thai";
	var Tibt = "Tibt";
	var Tirh = "Tirh";
	var Ugar = "Ugar";
	var Vaii = "Vaii";
	var Visp = "Visp";
	var Wara = "Wara";
	var Wole = "Wole";
	var Xpeo = "Xpeo";
	var Xsux = "Xsux";
	var Yiii = "Yiii";
	var Zmth = "Zmth";
	var Zsym = "Zsym";
	var Zyyy = "Zyyy";
}

@:enum abstract GenericFamily(String) from String to String {
	var standard = "standard";
	var sansserif = "sansserif";
	var serif = "serif";
	var fixed = "fixed";
	var cursive = "cursive";
	var fantasy = "fantasy";
}

/*
@:enum abstract LevelOfControl(String) from String to String {
	var not_controllable = "not_controllable";
	var controlled_by_other_extensions = "controlled_by_other_extensions";
	var controllable_by_this_extension = "controllable_by_this_extension";
	var controlled_by_this_extension = "controlled_by_this_extension";
}
*/

@:require(chrome_ext)
@:native("chrome.fontSettings")
extern class FontSettings {
	static function clearFont( details : {?script:ScriptCode,genericFamily:GenericFamily}, ?callback : Void->Void ) : Void;
	static function getFont( details : {?script:ScriptCode,genericFamily:GenericFamily}, ?callback : {fontId:String,levelOfControl:LevelOfControl}->Void ) : Void;
	static function setFont( details : {?script:ScriptCode,genericFamily:GenericFamily,fontId:String}, ?callback : Void->Void ) : Void;
	static function getFontList( callback : Array<FontName>->Void ) : Void;
	static function clearDefaultFontSize( ?details : Dynamic, ?callback : Void->Void ) : Void;
	static function getDefaultFontSize( ?details : Dynamic, ?callback : {pixelSize:Int,levelOfControl:LevelOfControl}->Void ) : Void;
	static function setDefaultFontSize( details : {pixelSize:Int}, ?callback : Void->Void ) : Void;
	static function clearDefaultFixedFontSize( ?details : Dynamic, ?callback : Void->Void ) : Void;
	static function getDefaultFixedFontSize( ?details : Dynamic, ?callback : {pixelSize:Int,levelOfControl:LevelOfControl}->Void ) : Void;
	static function setDefaultFixedFontSize( details : {pixelSize:Int}, ?callback : Void->Void ) : Void;
	static function clearMinimumFontSize( ?details : Dynamic, ?callback : Void->Void ) : Void;
	static function getMinimumFontSize( ?details : Dynamic, ?callback : Dynamic->Void ) : Void;
	static function setMinimumFontSize( details : {pixelSize:Int}, ?callback : Void->Void ) : Void;
	static var onFontChanged(default,never) : Event<{fontId:String,?script:ScriptCode,genericFamily:GenericFamily,levelOfControl:LevelOfControl}->Void>;
	static var onDefaultFontSizeChanged(default,never) : Event<{pixelSize:Int,levelOfControl:LevelOfControl}->Void>;
	static var onDefaultFixedFontSizeChanged(default,never) : Event<{pixelSize:Int,levelOfControl:LevelOfControl}->Void>;
	static var onMinimumFontSizeChanged(default,never) : Event<{pixelSize:Int,levelOfControl:LevelOfControl}->Void>;
}
