package chrome;

import chrome.Events;

enum BookmarkTreeNodeUnmodifiable {
	managed;
}

typedef BookmarkTreeNode = {
	var id : String;
	@:optional var parentId : Null<String>;
	@:optional var index : Int;
	@:optional var url :  String;
	var title : String;
	@:optional var dateAdded : Float;
	@:optional var dateGroupModified : Float;
	@:optional var unmodifiable : BookmarkTreeNodeUnmodifiable;
	@:optional var children : Array<BookmarkTreeNode>;
}

typedef BookmarkDestination = {
	@:optional var parentId : String;
	@:optional var index : Null<Int>;
}

typedef BookmarkChanges = {
	@:optional var title : String;
	@:optional var url : String;
}

typedef BookmarkChangeInfo = {
	var title : String;
	@:optional var url : Null<String>;
}

typedef Bookmark = {
	@:optional var parentId : String;
	@:optional var index : Int;
	@:optional var title : String;
	@:optional var url : String;
}

typedef BookmarkReorderInfo = {
	var childIds : Array<String>;
}

typedef BookmarkMoveInfo = {
	var parentId : String;
	var index : Int;
	var oldParentId : Int;
	var oldIndex  : Int;
}

typedef BookmarkRemoveInfo = {
	var parentId : String;
	var index : Int;
}

@:require(chrome_ext)
@:native("chrome.bookmarks")
extern class Bookmarks {

	static var MAX_WRITE_OPERATIONS_PER_HOUR(default,never) : Int;
	static var MAX_SUSTAINED_WRITE_OPERATIONS_PER_MINUTE(default,never) : Int;

	@:overload(function( ?idList:Array<String>, callback : Array<BookmarkTreeNode>->Void ) : Void {} )
	static function get( id : String, callback : Array<BookmarkTreeNode>->Void ) : Void;
	static function getChildren( id : String, callback : Array<BookmarkTreeNode>->Void ) : Void;
	static function getRecent( numberOfItems : Int, callback : Array<BookmarkTreeNode>->Void ) : Void;
	static function getTree( callback : Array<BookmarkTreeNode>->Void ) : Void;
	static function getSubTree( id : String, callback : Array<BookmarkTreeNode>->Void ) : Void;
	static function search( query : String, callback : Array<BookmarkTreeNode>->Void ) : Void;
	static function create( bookmark : Bookmark, ?callback : BookmarkTreeNode->Void ) : Void;
	static function move( id : String, destination : BookmarkDestination, ?callback : BookmarkTreeNode->Void ) : Void;
	static function update( id : String, changes : BookmarkChanges, ?callback : Array<BookmarkTreeNode>->Void ) : Void;
	static function remove( id : String, ?callback : Void->Void ) : Void;
	static function removeTree( id : String, ?callback : Void->Void ) : Void;

	static var onCreated(default,never) : Event<String->BookmarkTreeNode->Void>;
	static var onRemoved(default,never) : Event<String->BookmarkRemoveInfo->Void>;
	static var onChanged(default,never) : Event<String->BookmarkChangeInfo->Void>;
	static var onMoved(default,never) : Event<String->BookmarkMoveInfo->Void>;
	static var onChildrenReordered(default,never) : Event<String->BookmarkReorderInfo->Void>;
	static var onImportEnded(default,never) : Event<Void->Void>;
	static var onImportBegan(default,never) : Event<Void->Void>;
}
