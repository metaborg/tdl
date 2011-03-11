package org.strategoxt.imp.types;

import org.strategoxt.imp.runtime.dynamicloading.Descriptor;
import org.strategoxt.imp.runtime.services.MetaFileLanguageValidator;

public class TypeDefinitionLanguageValidator extends MetaFileLanguageValidator 
{ 
  @Override public Descriptor getDescriptor()
  { 
    return TypeDefinitionLanguageParseController.getDescriptor();
  }
}