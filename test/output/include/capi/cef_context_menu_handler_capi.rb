# Generated by ffi-gen. Please do not change this file by hand.

require 'ffi'

module CEF
  extend FFI::Library
  ffi_lib 'cef'
  
  def self.attach_function(name, *_)
    begin; super; rescue FFI::NotFoundError => e
      (class << self; self; end).class_eval { define_method(name) { |*_| raise e } }
    end
  end
  
  # (Not documented)
  class BrowserT < FFI::Struct
    layout :dummy, :char
  end
  
  # (Not documented)
  class FrameT < FFI::Struct
    layout :dummy, :char
  end
  
  # (Not documented)
  class ContextMenuParamsT < FFI::Struct
    layout :dummy, :char
  end
  
  # (Not documented)
  class MenuModelT < FFI::Struct
    layout :dummy, :char
  end
  
  # (Not documented)
  class BrowserT < FFI::Struct
    layout :dummy, :char
  end
  
  # (Not documented)
  class FrameT < FFI::Struct
    layout :dummy, :char
  end
  
  # (Not documented)
  class ContextMenuParamsT < FFI::Struct
    layout :dummy, :char
  end
  
  # (Not documented)
  class BrowserT < FFI::Struct
    layout :dummy, :char
  end
  
  # (Not documented)
  class FrameT < FFI::Struct
    layout :dummy, :char
  end
  
  # Implement this structure to handle context menu events. The functions of this
  # structure will be called on the UI thread.
  # 
  # = Fields:
  # :base ::
  #   (unknown) Base structure.
  # :on_before_context_menu ::
  #   (FFI::Pointer(*)) Called before a context menu is displayed. |params| provides information
  #   about the context menu state. |model| initially contains the default
  #   context menu. The |model| can be cleared to show no context menu or
  #   modified to show a custom menu. Do not keep references to |params| or
  #   |model| outside of this callback.
  # :on_context_menu_command ::
  #   (FFI::Pointer(*)) Called to execute a command selected from the context menu. Return true (1)
  #   if the command was handled or false (0) for the default implementation. See
  #   cef_menu_id_t for the command ids that have default implementations. All
  #   user-defined command ids should be between MENU_ID_USER_FIRST and
  #   MENU_ID_USER_LAST. |params| will have the same values as what was passed to
  #   on_before_context_menu(). Do not keep a reference to |params| outside of
  #   this callback.
  # :on_context_menu_dismissed ::
  #   (FFI::Pointer(*)) Called when the context menu is dismissed irregardless of whether the menu
  #   was NULL or a command was selected.
  class ContextMenuHandlerT < FFI::Struct
    layout :base, :char,
           :on_before_context_menu, :pointer,
           :on_context_menu_command, :pointer,
           :on_context_menu_dismissed, :pointer
  end
  
  # Provides information about the context menu state. The ethods of this
  # structure can only be accessed on browser process the UI thread.
  # 
  # = Fields:
  # :base ::
  #   (unknown) Base structure.
  # :get_xcoord ::
  #   (FFI::Pointer(*)) Returns the X coordinate of the mouse where the context menu was invoked.
  #   Coords are relative to the associated RenderView's origin.
  # :get_ycoord ::
  #   (FFI::Pointer(*)) Returns the Y coordinate of the mouse where the context menu was invoked.
  #   Coords are relative to the associated RenderView's origin.
  # :get_type_flags ::
  #   (FFI::Pointer(*)) Returns flags representing the type of node that the context menu was
  #   invoked on.
  # :get_link_url ::
  #   (FFI::Pointer(*)) The resulting string must be freed by calling cef_string_userfree_free().
  # :get_unfiltered_link_url ::
  #   (FFI::Pointer(*)) The resulting string must be freed by calling cef_string_userfree_free().
  # :get_source_url ::
  #   (FFI::Pointer(*)) The resulting string must be freed by calling cef_string_userfree_free().
  # :is_image_blocked ::
  #   (FFI::Pointer(*)) Returns true (1) if the context menu was invoked on a blocked image.
  # :get_page_url ::
  #   (FFI::Pointer(*)) The resulting string must be freed by calling cef_string_userfree_free().
  # :get_frame_url ::
  #   (FFI::Pointer(*)) The resulting string must be freed by calling cef_string_userfree_free().
  # :get_frame_charset ::
  #   (FFI::Pointer(*)) The resulting string must be freed by calling cef_string_userfree_free().
  # :get_media_type ::
  #   (FFI::Pointer(*)) Returns the type of context node that the context menu was invoked on.
  # :get_media_state_flags ::
  #   (FFI::Pointer(*)) Returns flags representing the actions supported by the media element, if
  #   any, that the context menu was invoked on.
  # :get_selection_text ::
  #   (FFI::Pointer(*)) The resulting string must be freed by calling cef_string_userfree_free().
  # :is_editable ::
  #   (FFI::Pointer(*)) Returns true (1) if the context menu was invoked on an editable node.
  # :is_speech_input_enabled ::
  #   (FFI::Pointer(*)) Returns true (1) if the context menu was invoked on an editable node where
  #   speech-input is enabled.
  # :get_edit_state_flags ::
  #   (FFI::Pointer(*)) Returns flags representing the actions supported by the editable node, if
  #   any, that the context menu was invoked on.
  class ContextMenuParamsT < FFI::Struct
    layout :base, :char,
           :get_xcoord, :pointer,
           :get_ycoord, :pointer,
           :get_type_flags, :pointer,
           :get_link_url, :pointer,
           :get_unfiltered_link_url, :pointer,
           :get_source_url, :pointer,
           :is_image_blocked, :pointer,
           :get_page_url, :pointer,
           :get_frame_url, :pointer,
           :get_frame_charset, :pointer,
           :get_media_type, :pointer,
           :get_media_state_flags, :pointer,
           :get_selection_text, :pointer,
           :is_editable, :pointer,
           :is_speech_input_enabled, :pointer,
           :get_edit_state_flags, :pointer
  end
  
end
