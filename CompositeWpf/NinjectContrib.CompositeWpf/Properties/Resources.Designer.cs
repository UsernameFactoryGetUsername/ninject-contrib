﻿//------------------------------------------------------------------------------
// <auto-generated>
//     This code was generated by a tool.
//     Runtime Version:2.0.50727.1433
//
//     Changes to this file may cause incorrect behavior and will be lost if
//     the code is regenerated.
// </auto-generated>
//------------------------------------------------------------------------------

namespace NinjectContrib.CompositeWpf.Properties {
    using System;
    
    
    /// <summary>
    ///   A strongly-typed resource class, for looking up localized strings, etc.
    /// </summary>
    // This class was auto-generated by the StronglyTypedResourceBuilder
    // class via a tool like ResGen or Visual Studio.
    // To add or remove a member, edit your .ResX file then rerun ResGen
    // with the /str option, or rebuild your VS project.
    [global::System.CodeDom.Compiler.GeneratedCodeAttribute("System.Resources.Tools.StronglyTypedResourceBuilder", "2.0.0.0")]
    [global::System.Diagnostics.DebuggerNonUserCodeAttribute()]
    [global::System.Runtime.CompilerServices.CompilerGeneratedAttribute()]
    internal class Resources {
        
        private static global::System.Resources.ResourceManager resourceMan;
        
        private static global::System.Globalization.CultureInfo resourceCulture;
        
        [global::System.Diagnostics.CodeAnalysis.SuppressMessageAttribute("Microsoft.Performance", "CA1811:AvoidUncalledPrivateCode")]
        internal Resources() {
        }
        
        /// <summary>
        ///   Returns the cached ResourceManager instance used by this class.
        /// </summary>
        [global::System.ComponentModel.EditorBrowsableAttribute(global::System.ComponentModel.EditorBrowsableState.Advanced)]
        internal static global::System.Resources.ResourceManager ResourceManager {
            get {
                if (object.ReferenceEquals(resourceMan, null)) {
                    global::System.Resources.ResourceManager temp = new global::System.Resources.ResourceManager("NinjectContrib.CompositeWpf.Properties.Resources", typeof(Resources).Assembly);
                    resourceMan = temp;
                }
                return resourceMan;
            }
        }
        
        /// <summary>
        ///   Overrides the current thread's CurrentUICulture property for all
        ///   resource lookups using this strongly typed resource class.
        /// </summary>
        [global::System.ComponentModel.EditorBrowsableAttribute(global::System.ComponentModel.EditorBrowsableState.Advanced)]
        internal static global::System.Globalization.CultureInfo Culture {
            get {
                return resourceCulture;
            }
            set {
                resourceCulture = value;
            }
        }
        
        /// <summary>
        ///   Looks up a localized string similar to The method &apos;GetModuleEnumerator&apos; of the bootstrapper must be overwritten in order to use the default module initialization logic..
        /// </summary>
        internal static string NotOverwrittenGetModuleEnumeratorException {
            get {
                return ResourceManager.GetString("NotOverwrittenGetModuleEnumeratorException", resourceCulture);
            }
        }
        
        /// <summary>
        ///   Looks up a localized string similar to The ILoggerFacade is required and cannot be null..
        /// </summary>
        internal static string NullLoggerFacadeException {
            get {
                return ResourceManager.GetString("NullLoggerFacadeException", resourceCulture);
            }
        }
        
        /// <summary>
        ///   Looks up a localized string similar to The IModuleEnumerator is required and cannot be null in order to initialize the modules..
        /// </summary>
        internal static string NullModuleEnumeratorException {
            get {
                return ResourceManager.GetString("NullModuleEnumeratorException", resourceCulture);
            }
        }
        
        /// <summary>
        ///   Looks up a localized string similar to The IModuleLoader is required and cannot be null in order to initialize the modules..
        /// </summary>
        internal static string NullModuleLoaderException {
            get {
                return ResourceManager.GetString("NullModuleLoaderException", resourceCulture);
            }
        }
        
        /// <summary>
        ///   Looks up a localized string similar to The IKernel is required and cannot be null..
        /// </summary>
        internal static string NullUnityContainerException {
            get {
                return ResourceManager.GetString("NullUnityContainerException", resourceCulture);
            }
        }
        
        /// <summary>
        ///   Looks up a localized string similar to Type &apos;{0}&apos; was already registered by the application. Skipping....
        /// </summary>
        internal static string TypeMappingAlreadyRegistered {
            get {
                return ResourceManager.GetString("TypeMappingAlreadyRegistered", resourceCulture);
            }
        }
    }
}