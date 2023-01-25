import logging

logging.basicConfig(level=logging.DEBUG)
logger = logging.getLogger(__name__)


class MDDoc:

    COMMENT_BEGIN_FLAG = '<__COMMENT__BEGIN__FLAG__>'

    def __init__(self):
        self.md_struct = list()

    def line(self, content):
        self.md_struct.append(content + '\n')

    def br(self):
        self.line('')

    def block(self, content):
        self.line(content)
        self.br()

    def italic(self, content):
        self.block('*{0}*'.format(content))

    def bold(self, content):
        self.block('**{0}**'.format(content))

    def text(self, content):
        self.block(content)

    def hr(self):
        # self.block('----------------')
        pass

    def title(self, content, level=1):
        self.block('#'*level + ' ' + content)

    def table(self, columns_name, rows):
        self.line('|{0}|'.format('|'.join(columns_name)))
        self.line('---'.join(list('|'*(len(columns_name) + 1))))
        if rows:
            for i in rows:
                self.line('|{0}|'.format('|'.join(i)))
        else:
            self.line('|'*(len(columns_name) + 1))
        self.br()

    def code_block(self, code, language=''):
        self.line('```{0}'.format(language))
        for i in code.split('\n'):
            self.line(i.replace('\n', ''))
        self.line('```')
        self.br()

    def comment_begin(self, origin=None):
        if origin:
            logger.debug('comment_begin: %s', origin)
        else:
            logger.debug('comment_begin')

        self.line(self.COMMENT_BEGIN_FLAG)

    def comment_end(self, origin=None):
        if origin:
            logger.debug('comment_end: %s', origin)
        else:
            logger.debug('comment_end')

        i = -1
        while True:
            if self.md_struct[i].startswith(self.COMMENT_BEGIN_FLAG):
                self.md_struct[i] = '> \n'
                break
            self.md_struct[i] = '> ' + self.md_struct[i]
            i -= 1
        self.br()

    def output(self):
        self.hr()
        self.block("Generated with [Postdown][PyPI].")
        # It is apprporiate that credit is given to the postman tool with a link to the original URL of Titor, but adding an author just makes it looks like Titor is the author of the API.
        # self.block("Author: [Titor](https://github.com/TitorX)")
        self.line('[PyPI]:    https://pypi.python.org/pypi/Postdown')
        return ''.join(self.md_struct)
