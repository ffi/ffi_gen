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
  
  # Callback structure used for asynchronous continuation of JavaScript dialog
  # requests.
  # 
  # = Fields:
  # :base ::
  #   (unknown) Base structure.
  # :cont ::
  #   (FFI::Pointer(*)) Continue the JS dialog request. Set |success| to true (1) if the OK button
  #   was pressed. The |user_input| value should be specified for prompt dialogs.
  class JsdialogCallbackT < FFI::Struct
    layout :base, :char,
           :cont, :pointer
  end
  
  # (Not documented)
  class BrowserT < FFI::Struct
    layout :dummy, :char
  end
  
  # (Not documented)
  class BrowserT < FFI::Struct
    layout :dummy, :char
  end
  
  # (Not documented)
  class BrowserT < FFI::Struct
    layout :dummy, :char
  end
  
  # Implement this structure to handle events related to JavaScript dialogs. The
  # functions of this structure will be called on the UI thread.
  # 
  # = Fields:
  # :base ::
  #   (unknown) Base structure.
  # :on_jsdialog ::
  #   (FFI::Pointer(*)) Called to run a JavaScript dialog. The |default_prompt_text| value will be
  #   specified for prompt dialogs only. Set |suppress_message| to true (1) and
  #   return false (0) to suppress the message (suppressing messages is
  #   preferable to immediately executing the callback as this is used to detect
  #   presumably malicious behavior like spamming alert messages in
  #   onbeforeunload). Set |suppress_message| to false (0) and return false (0)
  #   to use the default implementation (the default implementation will show one
  #   modal dialog at a time and suppress any additional dialog requests until
  #   the displayed dialog is dismissed). Return true (1) if the application will
  #   use a custom dialog or if the callback has been executed immediately.
  #   Custom dialogs may be either modal or modeless. If a custom dialog is used
  #   the application must execute |callback| once the custom dialog is
  #   dismissed.
  # :on_before_unload_dialog ::
  #   (FFI::Pointer(*)) Called to run a dialog asking the user if they want to leave a page. Return
  #   false (0) to use the default dialog implementation. Return true (1) if the
  #   application will use a custom dialog or if the callback has been executed
  #   immediately. Custom dialogs may be either modal or modeless. If a custom
  #   dialog is used the application must execute |callback| once the custom
  #   dialog is dismissed.
  # :on_reset_dialog_state ::
  #   (FFI::Pointer(*)) Called to cancel any pending dialogs and reset any saved dialog state. Will
  #   be called due to events like page navigation irregardless of whether any
  #   dialogs are currently pending.
  class JsdialogHandlerT < FFI::Struct
    layout :base, :char,
           :on_jsdialog, :pointer,
           :on_before_unload_dialog, :pointer,
           :on_reset_dialog_state, :pointer
  end
  
end
