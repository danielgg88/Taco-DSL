/*
* generated by Xtext
*/
package dk.itu.smdp.survey.xtext.parser.antlr;

import com.google.inject.Inject;

import org.eclipse.xtext.parser.antlr.XtextTokenStream;
import dk.itu.smdp.survey.xtext.services.TacoGrammarAccess;

public class TacoParser extends org.eclipse.xtext.parser.antlr.AbstractAntlrParser {
	
	@Inject
	private TacoGrammarAccess grammarAccess;
	
	@Override
	protected void setInitialHiddenTokens(XtextTokenStream tokenStream) {
		tokenStream.setInitialHiddenTokens("RULE_WS", "RULE_ML_COMMENT", "RULE_SL_COMMENT");
	}
	
	@Override
	protected dk.itu.smdp.survey.xtext.parser.antlr.internal.InternalTacoParser createParser(XtextTokenStream stream) {
		return new dk.itu.smdp.survey.xtext.parser.antlr.internal.InternalTacoParser(stream, getGrammarAccess());
	}
	
	@Override 
	protected String getDefaultRuleName() {
		return "Survey";
	}
	
	public TacoGrammarAccess getGrammarAccess() {
		return this.grammarAccess;
	}
	
	public void setGrammarAccess(TacoGrammarAccess grammarAccess) {
		this.grammarAccess = grammarAccess;
	}
	
}
