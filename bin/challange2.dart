// * Challenge 2: Balance the Parentheses
// * Check for balanced parentheses. Given a string, check if there are ( and ) characters,
// * and return true if the parentheses in the string are balanced.

bool isParenthesesAreBalanced(String characters) {
  var charactersList = characters.split('');
  var leftParenthesis = 0;
  var rightParenthesis = 0;

  for (var i = 0; i < charactersList.length; i++) {
    if (charactersList[i] == '(') {
      leftParenthesis++;
    } else if (charactersList[i] == ')') {
      rightParenthesis++;
    }
  }
  if ((leftParenthesis+rightParenthesis) % 2 == 0 && leftParenthesis == rightParenthesis) {
    return true;
  } else {
    return false;
  }
}
