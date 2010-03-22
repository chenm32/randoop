
# Make will silently continue if file does not exist.
-include ../Makefile.user
-include Makefile.user

CLASS_DIRS := $(RANDOOP_HOME)/bin \
			  $(RANDOOP_HOME)/tests \
			  $(RANDOOP_HOME)/systemtests/clover-ant-2.3.1/lib/clover.jar 

# The shorter version of the classpath is much easier to read in the
# command output than the full version.  But the * classpath operator
# doesn't work under some (not well understood) circumstances
ifdef CLASSPATH_SUPPORTS_STAR
  CLASS_DIRS := $(CLASS_DIRS):$(RANDOOP_HOME)/lib/*
else
  CLASS_DIRS := $(CLASS_DIRS):$(wildcard $(RANDOOP_HOME)/lib/*.jar)
endif

# Convert to a standard classpath
empty:=
space:= $(empty) $(empty)
export CLASSPATH :=     $(subst $(space),:,$(RANDOOP_EXTRA_CLASSPATH):$(CLASS_DIRS))

XMXHEAP := -Xmx1650m 
