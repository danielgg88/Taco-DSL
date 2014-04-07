/*
* generated by Xtext
*/
grammar InternalTaco;

options {
	superClass=AbstractInternalAntlrParser;
	
}

@lexer::header {
package dk.itu.smdp.survey.xtext.parser.antlr.internal;

// Hack: Use our own Lexer superclass by means of import. 
// Currently there is no other way to specify the superclass for the lexer.
import org.eclipse.xtext.parser.antlr.Lexer;
}

@parser::header {
package dk.itu.smdp.survey.xtext.parser.antlr.internal; 

import org.eclipse.xtext.*;
import org.eclipse.xtext.parser.*;
import org.eclipse.xtext.parser.impl.*;
import org.eclipse.emf.ecore.util.EcoreUtil;
import org.eclipse.emf.ecore.EObject;
import org.eclipse.xtext.parser.antlr.AbstractInternalAntlrParser;
import org.eclipse.xtext.parser.antlr.XtextTokenStream;
import org.eclipse.xtext.parser.antlr.XtextTokenStream.HiddenTokens;
import org.eclipse.xtext.parser.antlr.AntlrDatatypeRuleToken;
import dk.itu.smdp.survey.xtext.services.TacoGrammarAccess;

}

@parser::members {

 	private TacoGrammarAccess grammarAccess;
 	
    public InternalTacoParser(TokenStream input, TacoGrammarAccess grammarAccess) {
        this(input);
        this.grammarAccess = grammarAccess;
        registerRules(grammarAccess.getGrammar());
    }
    
    @Override
    protected String getFirstRuleName() {
    	return "Survey";	
   	}
   	
   	@Override
   	protected TacoGrammarAccess getGrammarAccess() {
   		return grammarAccess;
   	}
}

@rulecatch { 
    catch (RecognitionException re) { 
        recover(input,re); 
        appendSkippedTokens();
    } 
}




// Entry rule entryRuleSurvey
entryRuleSurvey returns [EObject current=null] 
	:
	{ newCompositeNode(grammarAccess.getSurveyRule()); }
	 iv_ruleSurvey=ruleSurvey 
	 { $current=$iv_ruleSurvey.current; } 
	 EOF 
;

// Rule Survey
ruleSurvey returns [EObject current=null] 
    @init { enterRule(); 
    }
    @after { leaveRule(); }:
(	otherlv_0='survey' 
    {
    	newLeafNode(otherlv_0, grammarAccess.getSurveyAccess().getSurveyKeyword_0());
    }
(
(
		{ 
	        newCompositeNode(grammarAccess.getSurveyAccess().getTitleEStringParserRuleCall_1_0()); 
	    }
		lv_title_1_0=ruleEString		{
	        if ($current==null) {
	            $current = createModelElementForParent(grammarAccess.getSurveyRule());
	        }
       		set(
       			$current, 
       			"title",
        		lv_title_1_0, 
        		"EString");
	        afterParserOrEnumRuleCall();
	    }

)
)(	otherlv_2='date' 
    {
    	newLeafNode(otherlv_2, grammarAccess.getSurveyAccess().getDateKeyword_2_0());
    }
(
(
		{ 
	        newCompositeNode(grammarAccess.getSurveyAccess().getDateEStringParserRuleCall_2_1_0()); 
	    }
		lv_date_3_0=ruleEString		{
	        if ($current==null) {
	            $current = createModelElementForParent(grammarAccess.getSurveyRule());
	        }
       		set(
       			$current, 
       			"date",
        		lv_date_3_0, 
        		"EString");
	        afterParserOrEnumRuleCall();
	    }

)
))?(	otherlv_4='description' 
    {
    	newLeafNode(otherlv_4, grammarAccess.getSurveyAccess().getDescriptionKeyword_3_0());
    }
(
(
		{ 
	        newCompositeNode(grammarAccess.getSurveyAccess().getDescriptionEStringParserRuleCall_3_1_0()); 
	    }
		lv_description_5_0=ruleEString		{
	        if ($current==null) {
	            $current = createModelElementForParent(grammarAccess.getSurveyRule());
	        }
       		set(
       			$current, 
       			"description",
        		lv_description_5_0, 
        		"EString");
	        afterParserOrEnumRuleCall();
	    }

)
))?(
(
		{ 
	        newCompositeNode(grammarAccess.getSurveyAccess().getPersonPersonParserRuleCall_4_0()); 
	    }
		lv_person_6_0=rulePerson		{
	        if ($current==null) {
	            $current = createModelElementForParent(grammarAccess.getSurveyRule());
	        }
       		set(
       			$current, 
       			"person",
        		lv_person_6_0, 
        		"Person");
	        afterParserOrEnumRuleCall();
	    }

)
)?(
(
		{ 
	        newCompositeNode(grammarAccess.getSurveyAccess().getCategoriesCategoryParserRuleCall_5_0()); 
	    }
		lv_categories_7_0=ruleCategory		{
	        if ($current==null) {
	            $current = createModelElementForParent(grammarAccess.getSurveyRule());
	        }
       		add(
       			$current, 
       			"categories",
        		lv_categories_7_0, 
        		"Category");
	        afterParserOrEnumRuleCall();
	    }

)
)(
(
		{ 
	        newCompositeNode(grammarAccess.getSurveyAccess().getCategoriesCategoryParserRuleCall_6_0()); 
	    }
		lv_categories_8_0=ruleCategory		{
	        if ($current==null) {
	            $current = createModelElementForParent(grammarAccess.getSurveyRule());
	        }
       		add(
       			$current, 
       			"categories",
        		lv_categories_8_0, 
        		"Category");
	        afterParserOrEnumRuleCall();
	    }

)
)*)
;





// Entry rule entryRuleQuestion
entryRuleQuestion returns [EObject current=null] 
	:
	{ newCompositeNode(grammarAccess.getQuestionRule()); }
	 iv_ruleQuestion=ruleQuestion 
	 { $current=$iv_ruleQuestion.current; } 
	 EOF 
;

// Rule Question
ruleQuestion returns [EObject current=null] 
    @init { enterRule(); 
    }
    @after { leaveRule(); }:
(
    { 
        newCompositeNode(grammarAccess.getQuestionAccess().getMultipleChoice_ImplParserRuleCall_0()); 
    }
    this_MultipleChoice_Impl_0=ruleMultipleChoice_Impl
    { 
        $current = $this_MultipleChoice_Impl_0.current; 
        afterParserOrEnumRuleCall();
    }

    |
    { 
        newCompositeNode(grammarAccess.getQuestionAccess().getRankingParserRuleCall_1()); 
    }
    this_Ranking_1=ruleRanking
    { 
        $current = $this_Ranking_1.current; 
        afterParserOrEnumRuleCall();
    }

    |
    { 
        newCompositeNode(grammarAccess.getQuestionAccess().getRatingParserRuleCall_2()); 
    }
    this_Rating_2=ruleRating
    { 
        $current = $this_Rating_2.current; 
        afterParserOrEnumRuleCall();
    }

    |
    { 
        newCompositeNode(grammarAccess.getQuestionAccess().getYesNoParserRuleCall_3()); 
    }
    this_YesNo_3=ruleYesNo
    { 
        $current = $this_YesNo_3.current; 
        afterParserOrEnumRuleCall();
    }

    |
    { 
        newCompositeNode(grammarAccess.getQuestionAccess().getOpenFieldParserRuleCall_4()); 
    }
    this_OpenField_4=ruleOpenField
    { 
        $current = $this_OpenField_4.current; 
        afterParserOrEnumRuleCall();
    }

    |
    { 
        newCompositeNode(grammarAccess.getQuestionAccess().getMutuallyExclusive_ImplParserRuleCall_5()); 
    }
    this_MutuallyExclusive_Impl_5=ruleMutuallyExclusive_Impl
    { 
        $current = $this_MutuallyExclusive_Impl_5.current; 
        afterParserOrEnumRuleCall();
    }
)
;





// Entry rule entryRuleCategory
entryRuleCategory returns [EObject current=null] 
	:
	{ newCompositeNode(grammarAccess.getCategoryRule()); }
	 iv_ruleCategory=ruleCategory 
	 { $current=$iv_ruleCategory.current; } 
	 EOF 
;

// Rule Category
ruleCategory returns [EObject current=null] 
    @init { enterRule(); 
    }
    @after { leaveRule(); }:
(	otherlv_0='category' 
    {
    	newLeafNode(otherlv_0, grammarAccess.getCategoryAccess().getCategoryKeyword_0());
    }
(
(
		{ 
	        newCompositeNode(grammarAccess.getCategoryAccess().getTitleEStringParserRuleCall_1_0()); 
	    }
		lv_title_1_0=ruleEString		{
	        if ($current==null) {
	            $current = createModelElementForParent(grammarAccess.getCategoryRule());
	        }
       		set(
       			$current, 
       			"title",
        		lv_title_1_0, 
        		"EString");
	        afterParserOrEnumRuleCall();
	    }

)
)(	otherlv_2='description' 
    {
    	newLeafNode(otherlv_2, grammarAccess.getCategoryAccess().getDescriptionKeyword_2_0());
    }
(
(
		{ 
	        newCompositeNode(grammarAccess.getCategoryAccess().getDescriptionEStringParserRuleCall_2_1_0()); 
	    }
		lv_description_3_0=ruleEString		{
	        if ($current==null) {
	            $current = createModelElementForParent(grammarAccess.getCategoryRule());
	        }
       		set(
       			$current, 
       			"description",
        		lv_description_3_0, 
        		"EString");
	        afterParserOrEnumRuleCall();
	    }

)
))?(
(
		{ 
	        newCompositeNode(grammarAccess.getCategoryAccess().getPagesPageParserRuleCall_3_0()); 
	    }
		lv_pages_4_0=rulePage		{
	        if ($current==null) {
	            $current = createModelElementForParent(grammarAccess.getCategoryRule());
	        }
       		add(
       			$current, 
       			"pages",
        		lv_pages_4_0, 
        		"Page");
	        afterParserOrEnumRuleCall();
	    }

)
)(
(
		{ 
	        newCompositeNode(grammarAccess.getCategoryAccess().getPagesPageParserRuleCall_4_0()); 
	    }
		lv_pages_5_0=rulePage		{
	        if ($current==null) {
	            $current = createModelElementForParent(grammarAccess.getCategoryRule());
	        }
       		add(
       			$current, 
       			"pages",
        		lv_pages_5_0, 
        		"Page");
	        afterParserOrEnumRuleCall();
	    }

)
)*)
;





// Entry rule entryRuleEString
entryRuleEString returns [String current=null] 
	:
	{ newCompositeNode(grammarAccess.getEStringRule()); } 
	 iv_ruleEString=ruleEString 
	 { $current=$iv_ruleEString.current.getText(); }  
	 EOF 
;

// Rule EString
ruleEString returns [AntlrDatatypeRuleToken current=new AntlrDatatypeRuleToken()] 
    @init { enterRule(); 
    }
    @after { leaveRule(); }:
(    this_STRING_0=RULE_STRING    {
		$current.merge(this_STRING_0);
    }

    { 
    newLeafNode(this_STRING_0, grammarAccess.getEStringAccess().getSTRINGTerminalRuleCall_0()); 
    }

    |    this_ID_1=RULE_ID    {
		$current.merge(this_ID_1);
    }

    { 
    newLeafNode(this_ID_1, grammarAccess.getEStringAccess().getIDTerminalRuleCall_1()); 
    }
)
    ;





// Entry rule entryRulePerson
entryRulePerson returns [EObject current=null] 
	:
	{ newCompositeNode(grammarAccess.getPersonRule()); }
	 iv_rulePerson=rulePerson 
	 { $current=$iv_rulePerson.current; } 
	 EOF 
;

// Rule Person
rulePerson returns [EObject current=null] 
    @init { enterRule(); 
    }
    @after { leaveRule(); }:
(	otherlv_0='person' 
    {
    	newLeafNode(otherlv_0, grammarAccess.getPersonAccess().getPersonKeyword_0());
    }
(
(
		{ 
	        newCompositeNode(grammarAccess.getPersonAccess().getAttributePersonAttributeParserRuleCall_1_0()); 
	    }
		lv_attribute_1_0=rulePersonAttribute		{
	        if ($current==null) {
	            $current = createModelElementForParent(grammarAccess.getPersonRule());
	        }
       		add(
       			$current, 
       			"attribute",
        		lv_attribute_1_0, 
        		"PersonAttribute");
	        afterParserOrEnumRuleCall();
	    }

)
)(	otherlv_2=',' 
    {
    	newLeafNode(otherlv_2, grammarAccess.getPersonAccess().getCommaKeyword_2_0());
    }
(
(
		{ 
	        newCompositeNode(grammarAccess.getPersonAccess().getAttributePersonAttributeParserRuleCall_2_1_0()); 
	    }
		lv_attribute_3_0=rulePersonAttribute		{
	        if ($current==null) {
	            $current = createModelElementForParent(grammarAccess.getPersonRule());
	        }
       		add(
       			$current, 
       			"attribute",
        		lv_attribute_3_0, 
        		"PersonAttribute");
	        afterParserOrEnumRuleCall();
	    }

)
))*)
;





// Entry rule entryRulePage
entryRulePage returns [EObject current=null] 
	:
	{ newCompositeNode(grammarAccess.getPageRule()); }
	 iv_rulePage=rulePage 
	 { $current=$iv_rulePage.current; } 
	 EOF 
;

// Rule Page
rulePage returns [EObject current=null] 
    @init { enterRule(); 
    }
    @after { leaveRule(); }:
(	otherlv_0='page' 
    {
    	newLeafNode(otherlv_0, grammarAccess.getPageAccess().getPageKeyword_0());
    }
(
(
		{ 
	        newCompositeNode(grammarAccess.getPageAccess().getQuestionsQuestionParserRuleCall_1_0()); 
	    }
		lv_questions_1_0=ruleQuestion		{
	        if ($current==null) {
	            $current = createModelElementForParent(grammarAccess.getPageRule());
	        }
       		add(
       			$current, 
       			"questions",
        		lv_questions_1_0, 
        		"Question");
	        afterParserOrEnumRuleCall();
	    }

)
)(
(
		{ 
	        newCompositeNode(grammarAccess.getPageAccess().getQuestionsQuestionParserRuleCall_2_0()); 
	    }
		lv_questions_2_0=ruleQuestion		{
	        if ($current==null) {
	            $current = createModelElementForParent(grammarAccess.getPageRule());
	        }
       		add(
       			$current, 
       			"questions",
        		lv_questions_2_0, 
        		"Question");
	        afterParserOrEnumRuleCall();
	    }

)
)*)
;







// Entry rule entryRuleAnswer
entryRuleAnswer returns [EObject current=null] 
	:
	{ newCompositeNode(grammarAccess.getAnswerRule()); }
	 iv_ruleAnswer=ruleAnswer 
	 { $current=$iv_ruleAnswer.current; } 
	 EOF 
;

// Rule Answer
ruleAnswer returns [EObject current=null] 
    @init { enterRule(); 
    }
    @after { leaveRule(); }:
((
    {
        $current = forceCreateModelElement(
            grammarAccess.getAnswerAccess().getAnswerAction_0(),
            $current);
    }
)	otherlv_1='A' 
    {
    	newLeafNode(otherlv_1, grammarAccess.getAnswerAccess().getAKeyword_1());
    }
(
(
		{ 
	        newCompositeNode(grammarAccess.getAnswerAccess().getDescriptionEStringParserRuleCall_2_0()); 
	    }
		lv_description_2_0=ruleEString		{
	        if ($current==null) {
	            $current = createModelElementForParent(grammarAccess.getAnswerRule());
	        }
       		set(
       			$current, 
       			"description",
        		lv_description_2_0, 
        		"EString");
	        afterParserOrEnumRuleCall();
	    }

)
)((
(
		lv_isUserInputAllowed_3_0=	'[' 
    {
        newLeafNode(lv_isUserInputAllowed_3_0, grammarAccess.getAnswerAccess().getIsUserInputAllowedLeftSquareBracketKeyword_3_0_0());
    }
 
	    {
	        if ($current==null) {
	            $current = createModelElement(grammarAccess.getAnswerRule());
	        }
       		setWithLastConsumed($current, "isUserInputAllowed", true, "[");
	    }

)
)	otherlv_4='input' 
    {
    	newLeafNode(otherlv_4, grammarAccess.getAnswerAccess().getInputKeyword_3_1());
    }
	otherlv_5=']' 
    {
    	newLeafNode(otherlv_5, grammarAccess.getAnswerAccess().getRightSquareBracketKeyword_3_2());
    }
)?(	otherlv_6='sub' 
    {
    	newLeafNode(otherlv_6, grammarAccess.getAnswerAccess().getSubKeyword_4_0());
    }
(
(
		{ 
	        newCompositeNode(grammarAccess.getAnswerAccess().getSubquestionQuestionParserRuleCall_4_1_0()); 
	    }
		lv_subquestion_7_0=ruleQuestion		{
	        if ($current==null) {
	            $current = createModelElementForParent(grammarAccess.getAnswerRule());
	        }
       		add(
       			$current, 
       			"subquestion",
        		lv_subquestion_7_0, 
        		"Question");
	        afterParserOrEnumRuleCall();
	    }

)
)(
(
		{ 
	        newCompositeNode(grammarAccess.getAnswerAccess().getSubquestionQuestionParserRuleCall_4_2_0()); 
	    }
		lv_subquestion_8_0=ruleQuestion		{
	        if ($current==null) {
	            $current = createModelElementForParent(grammarAccess.getAnswerRule());
	        }
       		add(
       			$current, 
       			"subquestion",
        		lv_subquestion_8_0, 
        		"Question");
	        afterParserOrEnumRuleCall();
	    }

)
)*	otherlv_9='end' 
    {
    	newLeafNode(otherlv_9, grammarAccess.getAnswerAccess().getEndKeyword_4_3());
    }
)?)
;





// Entry rule entryRuleMultipleChoice_Impl
entryRuleMultipleChoice_Impl returns [EObject current=null] 
	:
	{ newCompositeNode(grammarAccess.getMultipleChoice_ImplRule()); }
	 iv_ruleMultipleChoice_Impl=ruleMultipleChoice_Impl 
	 { $current=$iv_ruleMultipleChoice_Impl.current; } 
	 EOF 
;

// Rule MultipleChoice_Impl
ruleMultipleChoice_Impl returns [EObject current=null] 
    @init { enterRule(); 
    }
    @after { leaveRule(); }:
(	otherlv_0='Q' 
    {
    	newLeafNode(otherlv_0, grammarAccess.getMultipleChoice_ImplAccess().getQKeyword_0());
    }
(
(
		lv_isMandatory_1_0=	'*' 
    {
        newLeafNode(lv_isMandatory_1_0, grammarAccess.getMultipleChoice_ImplAccess().getIsMandatoryAsteriskKeyword_1_0());
    }
 
	    {
	        if ($current==null) {
	            $current = createModelElement(grammarAccess.getMultipleChoice_ImplRule());
	        }
       		setWithLastConsumed($current, "isMandatory", true, "*");
	    }

)
)?(
(
		{ 
	        newCompositeNode(grammarAccess.getMultipleChoice_ImplAccess().getQuestionTextEStringParserRuleCall_2_0()); 
	    }
		lv_questionText_2_0=ruleEString		{
	        if ($current==null) {
	            $current = createModelElementForParent(grammarAccess.getMultipleChoice_ImplRule());
	        }
       		set(
       			$current, 
       			"questionText",
        		lv_questionText_2_0, 
        		"EString");
	        afterParserOrEnumRuleCall();
	    }

)
)	otherlv_3='[' 
    {
    	newLeafNode(otherlv_3, grammarAccess.getMultipleChoice_ImplAccess().getLeftSquareBracketKeyword_3());
    }
(
(
		{ 
	        newCompositeNode(grammarAccess.getMultipleChoice_ImplAccess().getMinEIntParserRuleCall_4_0()); 
	    }
		lv_min_4_0=ruleEInt		{
	        if ($current==null) {
	            $current = createModelElementForParent(grammarAccess.getMultipleChoice_ImplRule());
	        }
       		set(
       			$current, 
       			"min",
        		lv_min_4_0, 
        		"EInt");
	        afterParserOrEnumRuleCall();
	    }

)
)	otherlv_5='-' 
    {
    	newLeafNode(otherlv_5, grammarAccess.getMultipleChoice_ImplAccess().getHyphenMinusKeyword_5());
    }
(
(
		{ 
	        newCompositeNode(grammarAccess.getMultipleChoice_ImplAccess().getMaxEIntParserRuleCall_6_0()); 
	    }
		lv_max_6_0=ruleEInt		{
	        if ($current==null) {
	            $current = createModelElementForParent(grammarAccess.getMultipleChoice_ImplRule());
	        }
       		set(
       			$current, 
       			"max",
        		lv_max_6_0, 
        		"EInt");
	        afterParserOrEnumRuleCall();
	    }

)
)	otherlv_7=']' 
    {
    	newLeafNode(otherlv_7, grammarAccess.getMultipleChoice_ImplAccess().getRightSquareBracketKeyword_7());
    }
(
(
		{ 
	        newCompositeNode(grammarAccess.getMultipleChoice_ImplAccess().getAnswersAnswerParserRuleCall_8_0()); 
	    }
		lv_answers_8_0=ruleAnswer		{
	        if ($current==null) {
	            $current = createModelElementForParent(grammarAccess.getMultipleChoice_ImplRule());
	        }
       		add(
       			$current, 
       			"answers",
        		lv_answers_8_0, 
        		"Answer");
	        afterParserOrEnumRuleCall();
	    }

)
)(
(
		{ 
	        newCompositeNode(grammarAccess.getMultipleChoice_ImplAccess().getAnswersAnswerParserRuleCall_9_0()); 
	    }
		lv_answers_9_0=ruleAnswer		{
	        if ($current==null) {
	            $current = createModelElementForParent(grammarAccess.getMultipleChoice_ImplRule());
	        }
       		add(
       			$current, 
       			"answers",
        		lv_answers_9_0, 
        		"Answer");
	        afterParserOrEnumRuleCall();
	    }

)
)*)
;





// Entry rule entryRuleRanking
entryRuleRanking returns [EObject current=null] 
	:
	{ newCompositeNode(grammarAccess.getRankingRule()); }
	 iv_ruleRanking=ruleRanking 
	 { $current=$iv_ruleRanking.current; } 
	 EOF 
;

// Rule Ranking
ruleRanking returns [EObject current=null] 
    @init { enterRule(); 
    }
    @after { leaveRule(); }:
(	otherlv_0='Q' 
    {
    	newLeafNode(otherlv_0, grammarAccess.getRankingAccess().getQKeyword_0());
    }
(
(
		lv_isMandatory_1_0=	'*' 
    {
        newLeafNode(lv_isMandatory_1_0, grammarAccess.getRankingAccess().getIsMandatoryAsteriskKeyword_1_0());
    }
 
	    {
	        if ($current==null) {
	            $current = createModelElement(grammarAccess.getRankingRule());
	        }
       		setWithLastConsumed($current, "isMandatory", true, "*");
	    }

)
)?(
(
		{ 
	        newCompositeNode(grammarAccess.getRankingAccess().getQuestionTextEStringParserRuleCall_2_0()); 
	    }
		lv_questionText_2_0=ruleEString		{
	        if ($current==null) {
	            $current = createModelElementForParent(grammarAccess.getRankingRule());
	        }
       		set(
       			$current, 
       			"questionText",
        		lv_questionText_2_0, 
        		"EString");
	        afterParserOrEnumRuleCall();
	    }

)
)	otherlv_3='[' 
    {
    	newLeafNode(otherlv_3, grammarAccess.getRankingAccess().getLeftSquareBracketKeyword_3());
    }
	otherlv_4='rank' 
    {
    	newLeafNode(otherlv_4, grammarAccess.getRankingAccess().getRankKeyword_4());
    }
	otherlv_5=']' 
    {
    	newLeafNode(otherlv_5, grammarAccess.getRankingAccess().getRightSquareBracketKeyword_5());
    }
(
(
		{ 
	        newCompositeNode(grammarAccess.getRankingAccess().getAnswersAnswerParserRuleCall_6_0()); 
	    }
		lv_answers_6_0=ruleAnswer		{
	        if ($current==null) {
	            $current = createModelElementForParent(grammarAccess.getRankingRule());
	        }
       		add(
       			$current, 
       			"answers",
        		lv_answers_6_0, 
        		"Answer");
	        afterParserOrEnumRuleCall();
	    }

)
)(
(
		{ 
	        newCompositeNode(grammarAccess.getRankingAccess().getAnswersAnswerParserRuleCall_7_0()); 
	    }
		lv_answers_7_0=ruleAnswer		{
	        if ($current==null) {
	            $current = createModelElementForParent(grammarAccess.getRankingRule());
	        }
       		add(
       			$current, 
       			"answers",
        		lv_answers_7_0, 
        		"Answer");
	        afterParserOrEnumRuleCall();
	    }

)
)*)
;





// Entry rule entryRuleRating
entryRuleRating returns [EObject current=null] 
	:
	{ newCompositeNode(grammarAccess.getRatingRule()); }
	 iv_ruleRating=ruleRating 
	 { $current=$iv_ruleRating.current; } 
	 EOF 
;

// Rule Rating
ruleRating returns [EObject current=null] 
    @init { enterRule(); 
    }
    @after { leaveRule(); }:
(	otherlv_0='Q' 
    {
    	newLeafNode(otherlv_0, grammarAccess.getRatingAccess().getQKeyword_0());
    }
(
(
		lv_isMandatory_1_0=	'*' 
    {
        newLeafNode(lv_isMandatory_1_0, grammarAccess.getRatingAccess().getIsMandatoryAsteriskKeyword_1_0());
    }
 
	    {
	        if ($current==null) {
	            $current = createModelElement(grammarAccess.getRatingRule());
	        }
       		setWithLastConsumed($current, "isMandatory", true, "*");
	    }

)
)?(
(
		{ 
	        newCompositeNode(grammarAccess.getRatingAccess().getQuestionTextEStringParserRuleCall_2_0()); 
	    }
		lv_questionText_2_0=ruleEString		{
	        if ($current==null) {
	            $current = createModelElementForParent(grammarAccess.getRatingRule());
	        }
       		set(
       			$current, 
       			"questionText",
        		lv_questionText_2_0, 
        		"EString");
	        afterParserOrEnumRuleCall();
	    }

)
)	otherlv_3='[' 
    {
    	newLeafNode(otherlv_3, grammarAccess.getRatingAccess().getLeftSquareBracketKeyword_3());
    }
(
(
		{ 
	        newCompositeNode(grammarAccess.getRatingAccess().getStartEIntParserRuleCall_4_0()); 
	    }
		lv_start_4_0=ruleEInt		{
	        if ($current==null) {
	            $current = createModelElementForParent(grammarAccess.getRatingRule());
	        }
       		set(
       			$current, 
       			"start",
        		lv_start_4_0, 
        		"EInt");
	        afterParserOrEnumRuleCall();
	    }

)
)	otherlv_5='-' 
    {
    	newLeafNode(otherlv_5, grammarAccess.getRatingAccess().getHyphenMinusKeyword_5());
    }
(
(
		{ 
	        newCompositeNode(grammarAccess.getRatingAccess().getEndEIntParserRuleCall_6_0()); 
	    }
		lv_end_6_0=ruleEInt		{
	        if ($current==null) {
	            $current = createModelElementForParent(grammarAccess.getRatingRule());
	        }
       		set(
       			$current, 
       			"end",
        		lv_end_6_0, 
        		"EInt");
	        afterParserOrEnumRuleCall();
	    }

)
)	otherlv_7=',' 
    {
    	newLeafNode(otherlv_7, grammarAccess.getRatingAccess().getCommaKeyword_7());
    }
(
(
		{ 
	        newCompositeNode(grammarAccess.getRatingAccess().getIntervalEIntParserRuleCall_8_0()); 
	    }
		lv_interval_8_0=ruleEInt		{
	        if ($current==null) {
	            $current = createModelElementForParent(grammarAccess.getRatingRule());
	        }
       		set(
       			$current, 
       			"interval",
        		lv_interval_8_0, 
        		"EInt");
	        afterParserOrEnumRuleCall();
	    }

)
)	otherlv_9=']' 
    {
    	newLeafNode(otherlv_9, grammarAccess.getRatingAccess().getRightSquareBracketKeyword_9());
    }
)
;





// Entry rule entryRuleYesNo
entryRuleYesNo returns [EObject current=null] 
	:
	{ newCompositeNode(grammarAccess.getYesNoRule()); }
	 iv_ruleYesNo=ruleYesNo 
	 { $current=$iv_ruleYesNo.current; } 
	 EOF 
;

// Rule YesNo
ruleYesNo returns [EObject current=null] 
    @init { enterRule(); 
    }
    @after { leaveRule(); }:
(	otherlv_0='Q' 
    {
    	newLeafNode(otherlv_0, grammarAccess.getYesNoAccess().getQKeyword_0());
    }
(
(
		lv_isMandatory_1_0=	'*' 
    {
        newLeafNode(lv_isMandatory_1_0, grammarAccess.getYesNoAccess().getIsMandatoryAsteriskKeyword_1_0());
    }
 
	    {
	        if ($current==null) {
	            $current = createModelElement(grammarAccess.getYesNoRule());
	        }
       		setWithLastConsumed($current, "isMandatory", true, "*");
	    }

)
)?(
(
		{ 
	        newCompositeNode(grammarAccess.getYesNoAccess().getQuestionTextEStringParserRuleCall_2_0()); 
	    }
		lv_questionText_2_0=ruleEString		{
	        if ($current==null) {
	            $current = createModelElementForParent(grammarAccess.getYesNoRule());
	        }
       		set(
       			$current, 
       			"questionText",
        		lv_questionText_2_0, 
        		"EString");
	        afterParserOrEnumRuleCall();
	    }

)
)	otherlv_3='[' 
    {
    	newLeafNode(otherlv_3, grammarAccess.getYesNoAccess().getLeftSquareBracketKeyword_3());
    }
	otherlv_4='y/n' 
    {
    	newLeafNode(otherlv_4, grammarAccess.getYesNoAccess().getYNKeyword_4());
    }
	otherlv_5=']' 
    {
    	newLeafNode(otherlv_5, grammarAccess.getYesNoAccess().getRightSquareBracketKeyword_5());
    }
)
;





// Entry rule entryRuleOpenField
entryRuleOpenField returns [EObject current=null] 
	:
	{ newCompositeNode(grammarAccess.getOpenFieldRule()); }
	 iv_ruleOpenField=ruleOpenField 
	 { $current=$iv_ruleOpenField.current; } 
	 EOF 
;

// Rule OpenField
ruleOpenField returns [EObject current=null] 
    @init { enterRule(); 
    }
    @after { leaveRule(); }:
(	otherlv_0='Q' 
    {
    	newLeafNode(otherlv_0, grammarAccess.getOpenFieldAccess().getQKeyword_0());
    }
(
(
		lv_isMandatory_1_0=	'*' 
    {
        newLeafNode(lv_isMandatory_1_0, grammarAccess.getOpenFieldAccess().getIsMandatoryAsteriskKeyword_1_0());
    }
 
	    {
	        if ($current==null) {
	            $current = createModelElement(grammarAccess.getOpenFieldRule());
	        }
       		setWithLastConsumed($current, "isMandatory", true, "*");
	    }

)
)?(
(
		{ 
	        newCompositeNode(grammarAccess.getOpenFieldAccess().getQuestionTextEStringParserRuleCall_2_0()); 
	    }
		lv_questionText_2_0=ruleEString		{
	        if ($current==null) {
	            $current = createModelElementForParent(grammarAccess.getOpenFieldRule());
	        }
       		set(
       			$current, 
       			"questionText",
        		lv_questionText_2_0, 
        		"EString");
	        afterParserOrEnumRuleCall();
	    }

)
))
;





// Entry rule entryRuleMutuallyExclusive_Impl
entryRuleMutuallyExclusive_Impl returns [EObject current=null] 
	:
	{ newCompositeNode(grammarAccess.getMutuallyExclusive_ImplRule()); }
	 iv_ruleMutuallyExclusive_Impl=ruleMutuallyExclusive_Impl 
	 { $current=$iv_ruleMutuallyExclusive_Impl.current; } 
	 EOF 
;

// Rule MutuallyExclusive_Impl
ruleMutuallyExclusive_Impl returns [EObject current=null] 
    @init { enterRule(); 
    }
    @after { leaveRule(); }:
(	otherlv_0='Q' 
    {
    	newLeafNode(otherlv_0, grammarAccess.getMutuallyExclusive_ImplAccess().getQKeyword_0());
    }
(
(
		lv_isMandatory_1_0=	'*' 
    {
        newLeafNode(lv_isMandatory_1_0, grammarAccess.getMutuallyExclusive_ImplAccess().getIsMandatoryAsteriskKeyword_1_0());
    }
 
	    {
	        if ($current==null) {
	            $current = createModelElement(grammarAccess.getMutuallyExclusive_ImplRule());
	        }
       		setWithLastConsumed($current, "isMandatory", true, "*");
	    }

)
)?(
(
		{ 
	        newCompositeNode(grammarAccess.getMutuallyExclusive_ImplAccess().getQuestionTextEStringParserRuleCall_2_0()); 
	    }
		lv_questionText_2_0=ruleEString		{
	        if ($current==null) {
	            $current = createModelElementForParent(grammarAccess.getMutuallyExclusive_ImplRule());
	        }
       		set(
       			$current, 
       			"questionText",
        		lv_questionText_2_0, 
        		"EString");
	        afterParserOrEnumRuleCall();
	    }

)
)(
(
		{ 
	        newCompositeNode(grammarAccess.getMutuallyExclusive_ImplAccess().getAnswersAnswerParserRuleCall_3_0()); 
	    }
		lv_answers_3_0=ruleAnswer		{
	        if ($current==null) {
	            $current = createModelElementForParent(grammarAccess.getMutuallyExclusive_ImplRule());
	        }
       		add(
       			$current, 
       			"answers",
        		lv_answers_3_0, 
        		"Answer");
	        afterParserOrEnumRuleCall();
	    }

)
)(
(
		{ 
	        newCompositeNode(grammarAccess.getMutuallyExclusive_ImplAccess().getAnswersAnswerParserRuleCall_4_0()); 
	    }
		lv_answers_4_0=ruleAnswer		{
	        if ($current==null) {
	            $current = createModelElementForParent(grammarAccess.getMutuallyExclusive_ImplRule());
	        }
       		add(
       			$current, 
       			"answers",
        		lv_answers_4_0, 
        		"Answer");
	        afterParserOrEnumRuleCall();
	    }

)
)*)
;





// Entry rule entryRuleEInt
entryRuleEInt returns [String current=null] 
	:
	{ newCompositeNode(grammarAccess.getEIntRule()); } 
	 iv_ruleEInt=ruleEInt 
	 { $current=$iv_ruleEInt.current.getText(); }  
	 EOF 
;

// Rule EInt
ruleEInt returns [AntlrDatatypeRuleToken current=new AntlrDatatypeRuleToken()] 
    @init { enterRule(); 
    }
    @after { leaveRule(); }:
((
	kw='-' 
    {
        $current.merge(kw);
        newLeafNode(kw, grammarAccess.getEIntAccess().getHyphenMinusKeyword_0()); 
    }
)?    this_INT_1=RULE_INT    {
		$current.merge(this_INT_1);
    }

    { 
    newLeafNode(this_INT_1, grammarAccess.getEIntAccess().getINTTerminalRuleCall_1()); 
    }
)
    ;





// Entry rule entryRulePersonAttribute
entryRulePersonAttribute returns [EObject current=null] 
	:
	{ newCompositeNode(grammarAccess.getPersonAttributeRule()); }
	 iv_rulePersonAttribute=rulePersonAttribute 
	 { $current=$iv_rulePersonAttribute.current; } 
	 EOF 
;

// Rule PersonAttribute
rulePersonAttribute returns [EObject current=null] 
    @init { enterRule(); 
    }
    @after { leaveRule(); }:
(
(
		{ 
	        newCompositeNode(grammarAccess.getPersonAttributeAccess().getKeyEStringParserRuleCall_0()); 
	    }
		lv_key_0_0=ruleEString		{
	        if ($current==null) {
	            $current = createModelElementForParent(grammarAccess.getPersonAttributeRule());
	        }
       		set(
       			$current, 
       			"key",
        		lv_key_0_0, 
        		"EString");
	        afterParserOrEnumRuleCall();
	    }

)
)
;





RULE_ID : '^'? ('a'..'z'|'A'..'Z'|'_') ('a'..'z'|'A'..'Z'|'_'|'0'..'9')*;

RULE_INT : ('0'..'9')+;

RULE_STRING : ('"' ('\\' ('b'|'t'|'n'|'f'|'r'|'u'|'"'|'\''|'\\')|~(('\\'|'"')))* '"'|'\'' ('\\' ('b'|'t'|'n'|'f'|'r'|'u'|'"'|'\''|'\\')|~(('\\'|'\'')))* '\'');

RULE_ML_COMMENT : '/*' ( options {greedy=false;} : . )*'*/';

RULE_SL_COMMENT : '//' ~(('\n'|'\r'))* ('\r'? '\n')?;

RULE_WS : (' '|'\t'|'\r'|'\n')+;

RULE_ANY_OTHER : .;


