/*
* generated by Xtext
*/
package dk.itu.smdp.survey.xtext.ui.quickfix

import dk.itu.smdp.survey.xtext.validation.TacoValidator
import org.eclipse.xtext.ui.editor.quickfix.DefaultQuickfixProvider
import org.eclipse.xtext.ui.editor.quickfix.Fix
import org.eclipse.xtext.ui.editor.quickfix.IssueResolutionAcceptor
import org.eclipse.xtext.validation.Issue

/**
 * Custom quickfixes.
 *
 * see http://www.eclipse.org/Xtext/documentation.html#quickfixes
 */
class TacoQuickfixProvider extends DefaultQuickfixProvider {

	@Fix(TacoValidator::CHECK_MULTIPLE_CHOICE_MAX_MIN)
	def setMaxHigherThanMin(Issue issue, IssueResolutionAcceptor acceptor)
	{
		acceptor.accept(issue, "Max higher than min", "Set max higher than min.", null) [
			context |
			val xtextDocument = context.xtextDocument
			val max = Integer.valueOf(xtextDocument.get(issue.offset, issue.length))
			xtextDocument.replace(issue.offset, issue.length, String.valueOf(max * 2))
		]
	}

//	@Fix(MyDslValidator::INVALID_NAME)
//	def capitalizeName(Issue issue, IssueResolutionAcceptor acceptor) {
//		acceptor.accept(issue, 'Capitalize name', 'Capitalize the name.', 'upcase.png') [
//			context |
//			val xtextDocument = context.xtextDocument
//			val firstLetter = xtextDocument.get(issue.offset, 1)
//			xtextDocument.replace(issue.offset, 1, firstLetter.toUpperCase)
//		]
//	}
}
