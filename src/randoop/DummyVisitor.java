package randoop;

import randoop.sequence.ExecutableSequence;
import randoop.test.TestChecks;

/** A visitor that does nothing and adds no checks. */
public final class DummyVisitor implements ExecutionVisitor {

  @Override
  public void initialize(ExecutableSequence executableSequence) {
    // do nothing.
  }

  @Override
  public void visitBeforeStatement(ExecutableSequence sequence, int i) {
    // do nothing
  }

  @Override
  public void visitAfterStatement(ExecutableSequence sequence, int i) {
    // do nothing
  }
  
}
